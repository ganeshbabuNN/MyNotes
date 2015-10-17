package com.ganesh.spring.jpa;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab54 {
public static void main(String[] args) {
	ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	CustomerDAO cdao = (CustomerDAO)ctx.getBean("cdao");
	//1.addCustomer
	System.out.println("addCustomer()");
	CustomerTO cto = new CustomerTO(7, "ganesh", "babu",9999,"Blore");
	cdao.addCustomer(cto);
	System.out.println("check your database");
	}	
}
