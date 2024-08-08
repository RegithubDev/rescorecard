package com.resustainability.reisp.common;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;

import javax.activation.DataHandler;
import javax.activation.MailcapCommandMap;
import javax.activation.MimetypesFileTypeMap;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.util.ByteArrayDataSource;

import org.apache.log4j.Logger;
import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.DateTime;
import com.google.api.services.calendar.Calendar;
import com.google.api.services.calendar.CalendarRequest;
import com.google.api.services.calendar.CalendarScopes;
import com.google.api.services.calendar.model.Event;
import com.google.api.services.calendar.model.EventAttendee;
import com.google.api.services.calendar.model.EventDateTime;
import com.google.api.services.calendar.model.EventReminder;
import com.google.api.services.sheets.v4.SheetsScopes;
import com.google.auth.http.HttpCredentialsAdapter;
import com.google.auth.oauth2.GoogleCredentials;
import com.resustainability.reisp.common.EMailSender;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.RoleMapping;
import com.resustainability.reisp.model.User;

public class EMailSender {

private static Logger logger = Logger.getLogger(EMailSender.class);

	/************** G Mail Server Credentials**************************************/
private static String mailId = "businessapps.appworks@resustainability.com";
private static String pass = "Appmint@321"; 
	
	public static Session getSession() {
		Properties prop = new Properties();
		
	
		
		/************** GMAIL Server Starts**************************************/
		prop.put("mail.smtp.host", "smtp.gmail.com");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.auth", "true");
        prop.put("mail.smtp.starttls.enable", "true"); //TLS
		/************** GMAIL Server ends*************************************/
		
		Session session = Session.getInstance(prop,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(mailId, pass);
			}
		  });
		return session;
	}
	public boolean send(String toAddress, String subject, Event invite, User user, String subject2) throws UnsupportedEncodingException, InvalidKeyException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidAlgorithmParameterException, BadPaddingException, IllegalBlockSizeException, NullPointerException {
		boolean isSend = false;		
		try {
			MimeMessage message = new MimeMessage(getSession());
			message.setFrom(new InternetAddress(mailId, subject2));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(toAddress));
			//message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(mailId));
			message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse(mailId));
			message.setSubject(subject,"UTF-8");
			Multipart mp = new MimeMultipart();
			MimeBodyPart htmlPart = new MimeBodyPart();
			String  body = "<html><body>Click <a href='"+invite.getHtmlLink()+"'>here</a> to visit our website.</body></html>"; // email body with HTML link
			htmlPart.setContent(message, "text/html");
			mp.addBodyPart(htmlPart);
			message.setContent(mp);
			message.setText( body,"utf-8", "html");
			
			Transport.send(message);
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
		return isSend;
	}
	public boolean sendReInitiate(String toAddress, String subject, String body, RoleMapping obj) throws UnsupportedEncodingException {
		boolean isSend = false;		
		try {
			MimeMessage message = new MimeMessage(getSession());
			message.setFrom(new InternetAddress(mailId, "Safety Approver"));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(toAddress));
			//message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(mailId));
			message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse(mailId));
			message.setSubject(subject,"UTF-8");
			Multipart mp = new MimeMultipart();
			MimeBodyPart htmlPart = new MimeBodyPart();
			
			htmlPart.setContent(message, "text/html");
			mp.addBodyPart(htmlPart);
			message.setContent(mp);
			message.setText( body,"utf-8", "html");
			
			Transport.send(message);
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
		return isSend;
	}
	public static File convert(MultipartFile file) throws IOException {
	    File convFile = new File(file.getOriginalFilename());
	    convFile.createNewFile();
	    FileOutputStream fos = new FileOutputStream(convFile);
	    fos.write(file.getBytes());
	    fos.close();
	    return convFile;
	}
	public boolean sendAdd(String mailTo, String mailSubject, String body, RoleMapping obj, String subject) throws UnsupportedEncodingException {
		boolean isSend = false;		
		try {
			MimeMessage message = new MimeMessage(getSession());
			message.setFrom(new InternetAddress(mailId, subject));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(mailTo));
			//message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(mailId));
			message.setSubject(mailSubject,"UTF-8");
			Multipart mp = new MimeMultipart();
			MimeBodyPart htmlPart = new MimeBodyPart();
			
			htmlPart.setContent(message, "text/html");
			mp.addBodyPart(htmlPart);
			message.setContent(mp);
			message.setText( body,"utf-8", "html");
			
			Transport.send(message);
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
		return isSend;
		
	}
	public void sendIRMEmailAlerts(Mail mail, Map<String, List<IRM>> alerts, String today_date, String yes_date, String current_year, String emailSubjectName) throws Exception {
		boolean isSend = false;		
		try {
			MimeMessage message = new MimeMessage(getSession());
			 Multipart multipart = new MimeMultipart( "alternative" );
			 VelocityEngine velocityEngine = new VelocityEngine();
			  Properties p = new Properties();
			  //p.setProperty("resource.loader", "class");
			  //p.setProperty("class.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
			  
			  p.setProperty("resource.loader", "class");
			  p.setProperty("class.resource.loader.description", "Velocity Classpath Resource Loader");
			  p.setProperty("class.resource.loader.class", "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
			  
			  p.setProperty("runtime.log.logsystem.class", "org.apache.velocity.runtime.log.NullLogSystem");
			  
			  //p.setProperty(Velocity.RUNTIME_LOG_LOGSYSTEM_CLASS,    NullLogChute.class.getName());
			  try {
				  velocityEngine.init( p );    
			  }catch (Exception e) {
				  throw new Exception(e);
			  }
			     
			  Template template = velocityEngine.getTemplate("templates/"+ mail.getTemplateName());
				
			  VelocityContext velocityContext = new VelocityContext();
			  velocityContext.put("alerts", alerts);
			  velocityContext.put("today_date", today_date);
			  velocityContext.put("yes_date", yes_date);
			  velocityContext.put("current_year", current_year);
			  
			  StringWriter stringWriter = new StringWriter();
			  
			  template.merge(velocityContext, stringWriter);
			  MimeBodyPart htmlPart = new MimeBodyPart();
			  htmlPart.setContent( stringWriter.toString(), "text/html; charset=utf-8" );
			  
			  ArrayList<String> recipientsArray = new ArrayList<String>();
			  StringTokenizer stringTokenizer = new StringTokenizer(mail.getMailTo(), ",");
			  message.setFrom(new InternetAddress(mailId, emailSubjectName));
			  while (stringTokenizer.hasMoreTokens()) {
				 recipientsArray.add(stringTokenizer.nextToken());
			  }
			  int sizeTo = recipientsArray.size();
			  InternetAddress[] addressTo = new InternetAddress[sizeTo];
			  for (int i = 0; i < sizeTo; i++) {
				 addressTo[i] = new InternetAddress(recipientsArray.get(i).toString());
			  }	 
			  message.setRecipients(Message.RecipientType.TO, addressTo);
			  message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse(mailId));
			
			message.setSubject("IRM Report","UTF-8");
			Multipart mp = new MimeMultipart();
			
			mp.addBodyPart(htmlPart);
			message.setContent(mp);
			message.setSubject(mail.getMailSubject());

			Transport.send(message);
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
	}
	public boolean send(String mailTo, String mailSubject, String body, User obj, String subject) throws UnsupportedEncodingException {
		boolean isSend = false;		
		try {
			MimeMessage message = new MimeMessage(getSession());
			message.setFrom(new InternetAddress(mailId, subject));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(mailTo));
			//message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(mailId));
			message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse(mailId));
			message.setSubject(subject,"UTF-8");
			Multipart mp = new MimeMultipart();
			MimeBodyPart htmlPart = new MimeBodyPart();
			
			htmlPart.setContent(message, "text/html");
			mp.addBodyPart(htmlPart);
			message.setContent(mp);
			message.setText( body,"utf-8", "html");
			
			Transport.send(message);
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
		return isSend;
		
	}
	
	public static boolean sendVerificationCode(String email, String code) throws MessagingException, UnsupportedEncodingException {
		boolean isSend = false;		
		try {
     
        String subject = "Verification Code";
        String body = "Your verification code is " + code;
    	MimeMessage message = new MimeMessage(getSession());
		message.setFrom(new InternetAddress(mailId, subject));
		message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));
		//message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(mailId));
		message.setRecipients(Message.RecipientType.BCC,InternetAddress.parse(mailId));
		message.setSubject(subject,"UTF-8");
		Multipart mp = new MimeMultipart();
		MimeBodyPart htmlPart = new MimeBodyPart();
		
		htmlPart.setContent(message, "text/html");
		mp.addBodyPart(htmlPart);
		message.setContent(mp);
		message.setText( body,"utf-8", "html");
		
		Transport.send(message);
		logger.info("Email sent successfully");
		isSend = true;
        logger.info("Email sent successfully");
		isSend = true;
	} catch (MessagingException e) {
		e.printStackTrace();
		logger.error("Exception occured while sending an email: "+e.getMessage());			
	}
		return isSend;
    }

	public boolean sendInvite(String mailTo, String mailSubject, Event invite, User obj, String subject) throws Exception {
		boolean isSend = false;		
		try {
			final MimetypesFileTypeMap mimetypes = (MimetypesFileTypeMap) MimetypesFileTypeMap.getDefaultFileTypeMap();
			mimetypes.addMimeTypes("text/calendar ics ICS");
			final MailcapCommandMap mailcap = (MailcapCommandMap) MailcapCommandMap.getDefaultCommandMap();
			mailcap.addMailcap("text/calendar;; x-java-content-handler=com.sun.mail.handlers.text_plain");
			
			MimeMessage message = new MimeMessage(getSession());
				message.setFrom(new InternetAddress(mailId));

			message.setSubject(subject);	// Subject of the event
			
			//adding emails to internetaddres
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(mailTo));
				message.addRecipient(Message.RecipientType.BCC, new InternetAddress("saidileep.p@resustainability.com"));
				message.addRecipient(Message.RecipientType.CC, new InternetAddress("bhargavdileep203@gmail.com"));

			
			 DateTime date = invite.getCreated();
  			String date1 = date.toString().replaceAll("-", "");
  			date1 = date1.replaceAll(":", "");
			BodyPart messageBodyPart = buildCalendarPart(invite.getHtmlLink(),date1);
			 MimeBodyPart bc = new MimeBodyPart();
			 String html = "<a href="+invite.getHtmlLink()+">Click Here to Attend Class</a></p>";
			 bc.setContent(html,"text/html");
			  BodyPart messageBody = bc;
			  Multipart multipart = new MimeMultipart();
			  
			  multipart.addBodyPart(messageBody);
			  multipart.addBodyPart(messageBodyPart);
			message.setContent(multipart);

			// send the message
			Transport transport = getSession().getTransport("smtp");
			transport.connect();
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
			logger.info("Email sent successfully");
			isSend = true;
		} catch (MessagingException e) {
			e.printStackTrace();
			logger.error("Exception occured while sending an email: "+e.getMessage());			
		}
		return isSend;
		
	}
	
	private static BodyPart buildHtmlTextPart() throws MessagingException {

		MimeBodyPart descriptionPart = new MimeBodyPart();

		// Note: even if the content is specified as being text/html, outlook
		// won't read correctly tables at all
		// and only some properties from div:s. Thus, try to avoid too fancy
		// content
		String content = "<h1 >simple meeting invitation</h1>";
		descriptionPart.setContent(content, "text/html; charset=utf-8");

		return descriptionPart;
	}

	/**
	 * @author simbu
	 * @param bodyMsg
	 * @param date1 
	 * @return calendardata along with design
	 * @throws Exception
	 */
	private static BodyPart buildCalendarPart(String bodyMsg, String date1) throws Exception {

		BodyPart calendarPart = new MimeBodyPart();

		// TODO: DATE AND TIME OF EVENT
		

		// check the icalendar spec in order to build a more complicated meeting
		// request
		final String calendarContent = "BEGIN:VCALENDAR\n" + "METHOD:PUBLISH\n" +
		"PRODID: -//ZContent.net//Zap Calendar 1.0//EN\n" + 
				"VERSION:2.0\n" + "BEGIN:VEVENT\n" + "DTSTAMP:" +
		date1 + "\n" + "DTSTART:" + date1 + 
				"\n" + "DTEND:" + date1 + "\n" + 
				"SUMMARY:Training Room\n" + 
				"UID:PurpleWestTeam@gmail\n"
				+ "SEQUENCE:0\n" + 
				"ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE:MAILTO:PurpleWestTeam@gmail.com\n"
				+ "DUE:19980415T235959\n" + 
				"ORGANIZER:MAILTO:PurpleWestTeam@gmail.com\n"
				+ "URL:"+bodyMsg+"\n"
				+ "LOCATION: Offce\n" + 
				"DESCRIPTION:" + bodyMsg + "\n" +
				"SEQUENCE:0\n" + "PRIORITY:5\n" + 
				"CLASS:PUBLIC\n"
				+ "RRULE:FREQ=YEARLY;INTERVAL=1;BYMONTH=2;BYMONTHDAY=12\n" + 
				"X-MICROSOFT-CDO-IMPORTANCE:1\n" +
				"STATUS:CONFIRMED\n" +
				"TRANSP:TRANSPARENT\n" +
				"BEGIN:VALARM\n" + 
				"ACTION:DISPLAY\n" + 
				"DESCRIPTION:Born February 12\\, 1809\nSixteenth President (1861-1865)\n\r\n"
				+ " \nhttp://AmericanHistoryCalendar.com\n" +
				"END:VALARM\n" + 
				"END:VEVENT\n" + 
				"END:VCALENDAR";
		calendarPart.setHeader("X-Mailer", "Microsoft Office Outlook 11");
		calendarPart.setHeader("Thread-Index", "AciZKuIpKjKRy3quQ+abmMVR7WMt8Q==");
		calendarPart.setHeader("X-MimeOLE", "Produced By Microsoft MimeOLE V6.00.2900.3138");
		calendarPart.addHeader("Content-Class", "urn:content-classes:calendarmessage");
		calendarPart.setContent(calendarContent, "text/calendar; method=REQUEST;charset=\"UTF-8\"");

		return calendarPart;
	}
	private JavaMailSender mailSender;

    private static final String APPLICATION_NAME = "PurpleWest";

            public boolean send1(String email, String code, Event invite, User user, String string) throws MessagingException, FileNotFoundException, IOException {
        		boolean isSend = false;		
        		CalendarRequest calendarRequest;
        		 MimeMessage mimeMessage = new MimeMessage(getSession());
        		 DateTime date = invite.getCreated();
     			String date1 = date.toString().replaceAll("-", "");
     			date1 = date1.replaceAll(":", "");
        	        mimeMessage.addHeaderLine("method=REQUEST");
        	        mimeMessage.addHeaderLine("charset=UTF-8");
        	        mimeMessage.addHeaderLine("component=VEVENT");
        	        mimeMessage.setFrom(new InternetAddress(mailId));
        	        mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
        	        mimeMessage.addRecipient(Message.RecipientType.BCC, new InternetAddress("saidileep.p@resustainability.com"));
        	        mimeMessage.setSubject(string);
        	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd HHmmss");
        	        StringBuilder builder = new StringBuilder();
        	        builder.append("BEGIN:VCALENDAR\n" +
        	                "METHOD:REQUEST\n" +
        	                "PRODID:Microsoft Exchange Server 2010\n" +
        	                "VERSION:2.0\n" +
        	                "BEGIN:VTIMEZONE\n" +
        	                "TZID:Asia/Kolkata\n" +
        	                "END:VTIMEZONE\n" +
        	                "BEGIN:VEVENT\n" +
        	                "ATTENDEE;ROLE=REQ-PARTICIPANT;RSVP=TRUE:MAILTO:" + email + "\n" +
        	                "ORGANIZER;CN=Foo:MAILTO:" + mailId + "\n" +
        	                "DESCRIPTION;LANGUAGE=en-US:" + string + "\n" +
        	                "UID:avavavavasvaw\n" +
        	                "SUMMARY;LANGUAGE=en-US:Discussion\n" +
        	                "DTSTART:" + date1 + "\n" +
        	                "DTEND:" + date1 + "\n" +
        	                "CLASS:PUBLIC\n" +
        	                "PRIORITY:5\n" +
        	                "DTSTAMP:20200922T105302Z\n" +
        	                "TRANSP:OPAQUE\n" +
        	                "STATUS:CONFIRMED\n" +
        	                "SEQUENCE:$sequenceNumber\n" +
        	                "LOCATION;LANGUAGE=en-US:Microsoft Teams Meeting\n" +
        	                "BEGIN:VALARM\n" +
        	                "DESCRIPTION:REMINDER\n" +
        	                "TRIGGER;RELATED=START:-PT15M\n" +
        	                "ACTION:DISPLAY\n" +
        	                "END:VALARM\n" +
        	                "END:VEVENT\n" +
        	                "END:VCALENDAR");
        	 
        	        BodyPart messageBodyPart = new MimeBodyPart();

       			 // Fill the message
       			 //messageBodyPart.setHeader("Content-Class", "urn:content-classes:calendarmessage");
       			// messageBodyPart.setHeader("Content-ID","calendar_message");
       			 messageBodyPart.setHeader("Content-Type", "text/calendar; charset=UTF-8; method=REQUEST");
       			// messageBodyPart.setDataHandler(new DataHandler(
       			// new ByteArrayDataSource(buffer.toString(), "text/calendar;method=REQUEST")));//very important


       			 // Create a Multipart
       			 Multipart multipart = new MimeMultipart("alternative");
       			 // Add part one
       			 multipart.addBodyPart(messageBodyPart);
       			 DataHandler dhCalendario = new DataHandler(
       					 new ByteArrayDataSource(builder.toString(), "text/calendar;method=REQUEST"));
       			 messageBodyPart.setDataHandler(dhCalendario);

       			 // Put parts in message
       			mimeMessage.setContent(multipart);

       			 // send message
       			Transport.send(mimeMessage);
        	        System.out.println("Calendar invite sent");
        		return isSend;
            }

}   
