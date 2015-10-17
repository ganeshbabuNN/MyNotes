package com.ganesh.spring.hibernate;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab48 {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		CustomerDAO cdao=(CustomerDAO)ctx.getBean("cdao");
		//1.addCustomer
		CustomerTO cto= new CustomerTO("GG", "g@j.com", 9999, "Blore");
		cdao.addCustomer(cto);
		
		//2.updateCustomer
		CustomerTO cto1= new CustomerTO(5, "Banu", "Banu@g.com", 9282, "USA");
		cdao.updateCustomer(cto1);
		
		//3.deleteCustomer
		//System.out.println("Check your database");
		
		//4.getCustomerByCid
		System.out.println("getCustomerByCid");
		//cto=cdao.getCustomerByCid(4);
		System.out.println(cto);
	}

}
