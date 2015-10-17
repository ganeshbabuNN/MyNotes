package com.ganesh.spring3.jdbc;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab43 {
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("spring-config.xml");
		CustomerDAO cdao= (CustomerDAO)ctx.getBean("cdao");
		//1.addCustomer
		System.out.println("**********addCustomer");
		CustomerTO cto= new CustomerTO(5, "ga", "ga@j.com", 322, "Blore");
		cdao.addCustomer(cto); 
		
		//2.updateCustomer
		System.out.println("**********updateCustomer");
		CustomerTO cto1= new CustomerTO(204,"ved", "vd@g.com", 0222, "Blore");
		cdao.updateCustomer(cto1);
		//3.deleteCustomers
		System.out.println("**********deleteCustomers");
		cdao.deleteCustomer(2);
		System.out.println("check your database");
		
	}

}
