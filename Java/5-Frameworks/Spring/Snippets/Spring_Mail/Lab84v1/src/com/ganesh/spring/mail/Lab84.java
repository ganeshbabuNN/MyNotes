package com.ganesh.spring.mail;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab84 {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("ganesh.xml");
		StudentService ms=(StudentService)ctx.getBean("ss");
		ms.sendMail("ganeshbabu346@yahoo.com", "Mail From Spring Class","<h1> Mail From Spring class ... How are you boss... </h1>");
		System.out.println("Mail Send Successfully");		
	}
}
