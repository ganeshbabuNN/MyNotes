package com.ganesh.spring.mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class PassworAuthenticator extends Authenticator {
	String email;
	String password;
	
	public PassworAuthenticator(String email,String password){
		this.email=email;
		this.password=password;
	}
	
	protected PasswordAuthentication getPasswordAuthentication() {
	 return new PasswordAuthentication(email, password);
	}
}
