package com.ganesh.spring.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;


public class StudentService {
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private SimpleMailMessage message;
	
	public void sendMail(String to,String sub,String body){
			message.setSubject(sub);
			message.setText(body);
			mailSender.send(message);
		}
	}
