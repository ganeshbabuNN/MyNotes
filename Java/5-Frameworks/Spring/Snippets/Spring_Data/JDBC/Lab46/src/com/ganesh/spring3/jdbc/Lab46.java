package com.ganesh.spring3.jdbc;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab46 {
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("spring-config.xml");
		CustomerDAO cdao= (CustomerDAO)ctx.getBean("cdao");
		//1.addCustomer
		System.out.println("*********addCustomer******");
		CustomerTO cto =new CustomerTO(11,"Ganesh","g@g.com",11,"Vell");
		cdao.addCustomer(cto);
		System.out.println("call Completed");
		
	}
}
