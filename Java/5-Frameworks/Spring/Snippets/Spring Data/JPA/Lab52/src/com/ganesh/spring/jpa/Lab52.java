package com.ganesh.spring.jpa;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab52 {
public static void main(String[] args) {
	ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	CustomerDAO cdao = (CustomerDAO)ctx.getBean("cdao");
	//1.Add Customer
	System.out.println("addCustomer");
	CustomerTO cto = new CustomerTO(6, "ganesh", "g@j.com", 3022, "Blore");
	cdao.addCustomer(cto);
	System.out.println(cto);
	
	//2.updateCustomer
	System.out.println("updateCustomer");
	CustomerTO cto1= new CustomerTO(2, "gb", "gb@l.com", 8382, "Blore");
	cdao.updateCustomer(cto1);
	System.out.println(cto1);
	
	//3.deleteCustomer
	System.out.println("deleteCustomer");
	cdao.deleteCustomer(1);
	
	//4.getCustomerByCid
	System.out.println("getCustomerByCid");
	cto=cdao.getCustomerByCid(2);
	System.out.println(cto);
	}
}
