package com.resustainability.reisp.common;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.razorpay.Order;
import com.razorpay.Payment;
import com.razorpay.PaymentLink;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;
import com.resustainability.reisp.model.IRM;


public class RazorpayPayment {

	private static final String apiKey = "rzp_test_467fDP2ju09Wx5";
	private static final String  secretKey = "BHcEEIIr07a2NwxvLcsa5hqz";

	    
	public PaymentLink  pay( HttpServletResponse response) throws RazorpayException, IOException {
		  String url =  Constants.SCHEME+"://"+Constants.HOSTNAME+"/v1";
	    RazorpayClient client = new RazorpayClient(apiKey, secretKey);
	    String orderId = null;  PaymentLink payment = null;
	    try {
	    	 // create a new order
	    	JSONObject orderRequest = new JSONObject();
	    	orderRequest.put("amount",1000);
	    	orderRequest.put("currency","INR");
	    	orderRequest.put("receipt", "receipt#1");
	    	JSONObject notes = new JSONObject();
	    	notes.put("notes_key_1","Tea, Earl Grey, Hot");
	    	notes.put("notes_key_1","Tea, Earl Grey, Hot");
	    	orderRequest.put("notes",notes);
	        Order order = client.orders.create(orderRequest);
	         orderId = order.get("id");

	        // create a payment link
	         JSONObject paymentLinkRequest = new JSONObject();
	         paymentLinkRequest.put("amount",1000);
	         paymentLinkRequest.put("currency","INR");
	         paymentLinkRequest.put("accept_partial",true);
	         paymentLinkRequest.put("first_min_partial_amount",1000);
	         paymentLinkRequest.put("expire_by",1691097057);
	         paymentLinkRequest.put("reference_id",orderId);
	         paymentLinkRequest.put("description","Payment for policy no #23456");
	         JSONObject customer = new JSONObject();
	         customer.put("name","+919441391620");
	         customer.put("contact","Dileep Patoju");
	         customer.put("email","saidileep.p@resustainability.com");
	         paymentLinkRequest.put("customer",customer);
	         JSONObject notify = new JSONObject();
	         notify.put("sms",true);
	         notify.put("email",true);
	         paymentLinkRequest.put("notify",notify);
	         paymentLinkRequest.put("reminder_enable",true);
	         JSONObject notes1 = new JSONObject();
	         notes1.put("policy_name","Jeevan Bima");
	         paymentLinkRequest.put("notes",notes1);
	         paymentLinkRequest.put("callback_url","http://localhost:8080/courses/payment/callback");
	         paymentLinkRequest.put("callback_method","get");
	                       
	          payment = client.paymentLink.create(paymentLinkRequest);
	         System.out.println(payment);
	        // redirect to the payment link
	       
	      

	     
        } catch (RazorpayException e) {
            e.printStackTrace();
        }
        return payment;
	}
	
	
}
