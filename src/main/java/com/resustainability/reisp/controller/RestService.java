package com.resustainability.reisp.controller;

import java.net.URLEncoder;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicCredentialsProvider;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.apache.log4j.Logger;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.resustainability.reisp.common.DateParser;
import com.resustainability.reisp.model.IRM;
import com.resustainability.reisp.model.IWM;


@Controller
@RequestMapping("/reone")
public class RestService {

	@InitBinder
    public void initBinder(WebDataBinder binder) { 
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(RestService.class);
	
	
	@RequestMapping(value = "/ajax/getoDataInChat", method = {RequestMethod.GET,RequestMethod.POST},produces=MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public String oDataInChat(@ModelAttribute IWM obj) throws Exception{	
		 HashMap<String, String> data1 = new HashMap<String, String>();
		 ObjectMapper objectMapper = new ObjectMapper();
			//List<DashBoardWeighBridge> pData = service.projectsIWMList("IWM");
		    LocalDate yesterday = LocalDate.now().minusDays(1);
	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
	        System.out.println("wfw");
	        String yesterdaysDate = yesterday.format(formatter);
			//pData.forEach(plist-> {
	        Gson gson = new GsonBuilder().setPrettyPrinting().create();
            String jsonBody = null;
            String baseUrl = "http://10.100.1.7:8000/sap/opu/odata/sap/ZSCM_REPORT_CDS/ZSCM_REPORT?$filter=";
            if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getPO_Number()) && !StringUtils.isEmpty(obj.getPR_Number())) {
                baseUrl = baseUrl + URLEncoder.encode("PO_Number eq '" + obj.getPO_Number() + "' or PR_Number eq '" + obj.getPR_Number() + "'", "UTF-8");
            } else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getPO_Number())) {
                baseUrl = baseUrl + URLEncoder.encode("PO_Number eq '" + obj.getPO_Number() + "'", "UTF-8");
            } else if(!StringUtils.isEmpty(obj) && !StringUtils.isEmpty(obj.getPR_Number())) {
                baseUrl = baseUrl + URLEncoder.encode("PR_Number eq '" + obj.getPR_Number() + "'", "UTF-8");
            }
	        String username = "22011982";
	        String password = "Ramky@567";

	        // Set up HTTP client with basic authentication
	        CredentialsProvider credentialsProvider = new BasicCredentialsProvider();
	        credentialsProvider.setCredentials(
	                new AuthScope(AuthScope.ANY_HOST, AuthScope.ANY_PORT),
	                new UsernamePasswordCredentials(username, password));
	        CloseableHttpClient httpClient = HttpClients.custom()
	                .setDefaultCredentialsProvider(credentialsProvider)
	                .build();

	        // Make GET request
	        HttpGet httpGet = new HttpGet(baseUrl);
	        httpGet.setHeader("Accept", "application/json");

	        // Execute request
	        HttpResponse response = httpClient.execute(httpGet);

	        // Process response
	        int statusCode = response.getStatusLine().getStatusCode();
	        if (statusCode == 200) {
	            // Convert response entity to string
	            HttpEntity entity = response.getEntity();
	            String responseBody = EntityUtils.toString(entity);
	            List<IWM> entryList = new ArrayList<>();
	            // Parse JSON response
	            JSONObject jsonObject = new JSONObject(responseBody);
	            JSONObject dObject = jsonObject.getJSONObject("d");
                JSONArray resultsArray = dObject.getJSONArray("results");
	            System.out.println("size: " + resultsArray.length());
	            // Process each entry
	            for (int i = 0; i < resultsArray.length(); i++) {
	                JSONObject entryJson = resultsArray.getJSONObject(i);
	                IWM entry = new IWM();
	                // Extract and process properties
	                entry.setPlant(entryJson.getString("Plant"));
	                entry.setRFQ_Number(entryJson.getString("RFQ_Number"));
	                entry.setRFQ_LineItem_Number(entryJson.getString("RFQ_LineItem_Number"));
	                entry.setRFQ_Quantity(entryJson.getString("RFQ_Quantity"));
	                entry.setRFQ_Createdon(entryJson.getString("RFQ_Createdon"));
	                entry.setRFQ_Floatedon(entryJson.getString("RFQ_Floatedon"));
	                entry.setRFQ_Maintainedon(entryJson.getString("RFQ_Maintainedon"));
	                entry.setENFA_Number(entryJson.getString("ENFA_Number"));
	                entry.setENFA_Creation(entryJson.getString("ENFA_Creation"));
	                entry.setENFA_approval(entryJson.getString("ENFA_approval"));
	              //  entry.setTR_Date(entryJson.getString("TR_Date"));
	                entry.setPR_Number(entryJson.getString("PR_Number"));
	                entry.setTR_Rating(entryJson.getString("TR_Rating"));
	                entry.setPO_Number(entryJson.getString("PO_Number"));
	                entry.setPO_LineItem_Number(entryJson.getString("PO_LineItem_Number"));
	                entry.setPO_Created_Date(entryJson.getString("PO_Created_Date"));
	                entry.setPO_Acc_Category(entryJson.getString("PO_Acc_Category"));
	                entry.setPO_Quantity(entryJson.getString("PO_Quantity"));
	                entry.setPO_Item_Rate(entryJson.getString("PO_Item_Rate"));
	                entry.setPO_NetValue(entryJson.getString("PO_NetValue"));
	                entry.setPO_Currency(entryJson.getString("PO_Currency"));
	                entry.setPO_Category(entryJson.getString("PO_Category"));
	                entry.setPR_Item(entryJson.getString("PR_Item"));
	                entry.setPO_Approval_Date(entryJson.getString("PO_Approval_Date"));
	              //  entry.setGate_Entry_Date(entryJson.getString("Gate_Entry_Date"));
	              //  entry.setInstection_Date(entryJson.getString("Instection_Date"));
	              //  entry.setGIR_Date(entryJson.getString("GIR_Date"));
	                entry.setGRN_number(entryJson.getString("GRN_number"));
	                entry.setGRN_Date(entryJson.getString("GRN_Date"));
	                entry.setMIRO_Date(entryJson.getString("MIRO_Date"));
	                entry.setMaterial_Description(entryJson.getString("Material_Description"));
	                entry.setFull_Name_of_Person(entryJson.getString("Full_Name_of_Person"));
	                entry.setPO_Value_Delivered(entryJson.getString("PO_Value_Delivered"));
	                entry.setPR_Createdon(entryJson.getString("PR_Createdon"));
	                entry.setPO_Value_Delivered_Quantity(entryJson.getString("PO_Value_Delivered_Quantity"));
	                entry.setPO_Value_To_Deliver(entryJson.getString("PO_Value_To_Deliver"));
	                entry.setPO_Value_To_Deliver_Quantity(entryJson.getString("PO_Value_To_Deliver_Quantity"));
	                entry.setPO_Short_Close_Quantity(entryJson.getString("PO_Short_Close_Quantity"));
	                entry.setPO_Short_Close_Value(entryJson.getString("PO_Short_Close_Value"));
	                entry.setPO_Delete_IND(entryJson.getString("PO_Delete_IND"));
	                entry.setPR_Delete_IND(entryJson.getString("PR_Delete_IND"));
	               // entry.setPR_Closed_IND(entryJson.getString("PR_Closed_IND"));
	                entry.setRFQ_Delete_IND(entryJson.getString("RFQ_Delete_IND"));
	               // entry.setPO_Deliv_Comp(entryJson.getString("PO_Deliv_Comp"));
	                entry.setMaterial(entryJson.getString("Material"));
	                entry.setPO_Value_Delivered_CNV(entryJson.getString("PO_Value_Delivered_CNV"));
	                entry.setPO_Value_To_Deliver_CNV(entryJson.getString("PO_Value_To_Deliver_CNV"));
	                entry.setPO_Short_Close_Value_CNV(entryJson.getString("PO_Short_Close_Value_CNV"));
	                entry.setPO_Create(entryJson.getString("PO_Create"));
	                entry.setQuantity(entryJson.getString("Quantity"));
	                entry.setPR_Approval_Date(entryJson.getString("PR_Approval_Date"));
	                entry.setBuyer_Involved(entryJson.getString("Buyer_Involved"));
	                entry.setBuyer_Acceptedon(entryJson.getString("Buyer_Acceptedon"));

	                // Extract other properties similarly...
	                entryList.add(entry);
	                // Output other properties similarly...
	            }
	            jsonBody = gson.toJson(entryList);
	          System.out.println(jsonBody);
	        } else {
	            System.err.println("HTTP request failed with status code: " + statusCode);
	        }

	        // Close HttpClient
	        httpClient.close();
	                
	        return jsonBody;
		     }
	
	
	
	
}
