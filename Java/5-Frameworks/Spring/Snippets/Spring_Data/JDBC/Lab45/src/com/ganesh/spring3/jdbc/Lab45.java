package com.ganesh.spring3.jdbc;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab45 {
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("spring-config.xml");
		CustomerDAO cdao= (CustomerDAO)ctx.getBean("cdao");
		//1.addCustomer
		System.out.println("*********addCustomer******");
		CustomerTO cto =new CustomerTO(111,"Ganesh","g@g.com",11,"Vell");
		cdao.addCustomer(cto);
		System.out.println(cto);
		
		//2.getAllCustomer
		System.out.println("*********getAllCustomer******");
		List<CustomerTO> list=cdao.getAllCustomers();
		for(CustomerTO ct: list){
			System.out.println(ct);
		}
	}
}
