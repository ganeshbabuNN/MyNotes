package com.ganesh;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab39 {
	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("spring-config.xml");
		System.out.println("----- Using Target Object ------");
		//instance
		CustomerService cs = (CustomerService)ctx.getBean("cs");
		// adding customer
		cs.addCustomer();
		System.out.println("--------------");
		//updating the customer
		cs.updateCustomer();
		System.out.println("--------------");
		
		//instance of account service
		AccountService as = (AccountService)ctx.getBean("as");
		//depositing the amount
		as.myDesposit();
		System.out.println("--------------");
		//getting the balance
		as.getBal();
		System.out.println("--------------");
		try {
			//withdrawing the amount
			as.mywithdraw();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		try {
			System.out.println("--------Sorry --------");
		} catch (Exception e) {
		}
	}
}
