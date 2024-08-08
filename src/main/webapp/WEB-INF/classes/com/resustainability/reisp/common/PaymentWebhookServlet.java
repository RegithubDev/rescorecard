package com.resustainability.reisp.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

public class PaymentWebhookServlet  extends HttpServlet{
	 private static final long serialVersionUID = 1L;
	private static final String apiKey = "rzp_test_467fDP2ju09Wx5";
	private static final String  secretKey = "BHcEEIIr07a2NwxvLcsa5hqz";
	
	  @Override
	  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // Get the JSON payload from the request
	        String payload = request.getReader().readLine();

	        try {
	            // Parse the JSON payload
	            JSONObject jsonObject = new JSONObject(payload);
	            String razorpayPaymentId = jsonObject.getJSONObject("payload").getJSONObject("payment").getString("entity");

	            // Capture the payment
	            RazorpayClient razorpayClient = new RazorpayClient(apiKey, secretKey);

	            JSONObject captureRequest = new JSONObject();
	            captureRequest.put("amount", jsonObject.getJSONObject("payload").getJSONObject("payment").getInt("amount"));

	            razorpayClient.payments.capture(razorpayPaymentId, captureRequest);

	            // Payment is captured successfully
	            response.setStatus(200);
	        } catch (RazorpayException e) {
	            // Handle error
	            response.setStatus(500);
	        }
	    }
	
}
