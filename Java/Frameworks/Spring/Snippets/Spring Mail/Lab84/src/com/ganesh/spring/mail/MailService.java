package com.ganesh.spring.mail;

import javax.mail.internet.MimeMessage;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class MailService {
	
	@Autowired
	private JavaMailSender mailSender;
	
	public void sendMail(String to,String sub,String body){
		MimeMessage message = mailSender.createMimeMessage();
		try{
			MimeMessageHelper helper= new MimeMessageHelper(message,true);
			helper.setFrom("ganeshbabu346@gmail.com");
			helper.setTo(to);
			helper.setSubject(sub);
			helper.setText(body,true);
			//File file = new File("D:/image4.jpg");
			//helper.addAttachment(file.getName(), file);
		}catch(Exception e){
			e.printStackTrace();
		}
		mailSender.send(message);
	}
}
