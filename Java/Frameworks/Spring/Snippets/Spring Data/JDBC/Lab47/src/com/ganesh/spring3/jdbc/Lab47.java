package com.ganesh.spring3.jdbc;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab47 {
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("spring-config.xml");
		CustomerDAO cdao= (CustomerDAO)ctx.getBean("cdao");
		//1.addCustomer
		System.out.println("*********addCustomer******");
		CustomerTO cto =new CustomerTO(215,"RRRR","RR@jlc",999,"Blore");
		//cdao.addCustomer(cto);
		
		//2.updateCustomer
		System.out.println("*********updateCustomer******");
		CustomerTO cto1 =new CustomerTO(205,"Ganesh","Gan@jlc",12,"Blore");
		cdao.updateCustomer(cto1);
		
		//3.DeleteCustomer
		System.out.println("*********DeleteCustomer******");
		//cdao.deleteCustomer(2);
		
		//4.getCustomerByCid
		System.out.println("*********getCustomerByCid******");
		CustomerTO cto2 =cdao.getCustomerByCid(7);
		System.out.println(cto2);;
		
		//5.getAllCustomers
		System.out.println("*********getAllCustomers******");
		List<CustomerTO> list = cdao.getAllCustomers();
		for(CustomerTO ct: list){
			System.out.println(ct);
		}		
	}
}
