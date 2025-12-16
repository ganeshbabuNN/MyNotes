package com.ganesh.spring3.jdbc;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab42 {
	public static void main(String[] args) {
		ApplicationContext ctx= new ClassPathXmlApplicationContext("spring-config.xml");
		CustomerDAO cdao= (CustomerDAO)ctx.getBean("cdao");
		//1.getCustomerByCid
		System.out.println("*********getCustomerByCid");
		CustomerTO cto=cdao.getCustomerByCid(102);
		System.out.println(cto);
		
		//2.getAllCustomers
		System.out.println("**********getAllCustomers");
		List<CustomerTO> list=cdao.getAllCustomers();
		for(CustomerTO ct: list)
			System.out.println(ct);
		
		//3.getCustomerByEmail
		System.out.println("***********getCustomerByEmail****");
		cto=cdao.getCustomerByEmail("gan@gma.com");
		System.out.println(cto);
		
		//4.getCustomerByCity
		System.out.println("***********getCustomerByCity");
		list=cdao.getCustomersByCity("Blore");
		for(CustomerTO ct: list)
			System.out.println(ct);
		
		//5.getCustomerCount
		System.out.println("***********getCustomerCount");
		int count=cdao.getCustomerCount();
		System.out.println("No of Cust:"+ count);
		
		//6.getCustomerCityByEmail
		System.out.println("***********getCustomerCityByEmail");
		String ci=cdao.getCustomerCityByEmail("gan@gma.com");
		System.out.println(ci);
		
		//6.getCustomerPhoneByEmail
		System.out.println("***********getCustomerPhoneByEmail");
		long ph=cdao.getCustomerPhoneByEmail("gan@gma.com");
		System.out.println(ph);
		
	}

}
