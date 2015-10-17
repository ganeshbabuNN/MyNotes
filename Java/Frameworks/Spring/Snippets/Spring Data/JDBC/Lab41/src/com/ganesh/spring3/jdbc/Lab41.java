package com.ganesh.spring3.jdbc;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab41 {
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("spring-config.xml");
		CustomerDAO cdao= (CustomerDAO)ctx.getBean("cdao");
		//1.addCustomer
		CustomerTO cto= new CustomerTO(204, "ga", "ga@j.com", 322, "Blore");
		cdao.addCustomer(cto); 
		
		//2.updateCustomer
		CustomerTO cto1= new CustomerTO(203,"ved", "vd@g.com", 0222, "Blore");
		cdao.updateCustomer(cto1);
		//3.deleteCustomers
		cdao.deleteCustomer(102);
		System.out.println("check your database");
		
	}

}
