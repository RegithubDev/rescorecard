package com.resustainability.reisp.model;

import java.util.UUID;

public class Conferencedata {
	private String meetLink;

	   public Conferencedata() {
	      // Generate a random UUID for the Meet link
	      this.meetLink = "https://meet.google.com/" + UUID.randomUUID().toString();
	   }

	   public String getMeetLink() {
	      return this.meetLink;
	   }
}
