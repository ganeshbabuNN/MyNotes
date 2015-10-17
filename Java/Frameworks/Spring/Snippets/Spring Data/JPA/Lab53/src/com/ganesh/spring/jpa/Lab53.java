package com.ganesh.spring.jpa;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Lab53 {
public static void main(String[] args) {
	ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
	CustomerDAO cdao = (CustomerDAO)ctx.getBean("cdao");
	//1.getAllCustomers
	System.out.println("getAllCustomers");
	List<CustomerTO> list=cdao.getAllCustomers();
	for(CustomerTO ct: list){
		System.out.println(ct);
	}
	
	//2.getCustomerByEmail
	System.out.println("getCustomersByEmail");
	CustomerTO cto=cdao.getCustomerByEmail("g@j.com");
	System.out.println(cto);
	
	//3.getCustomerByCity
	System.out.println("getCustomersByCity");
	list=cdao.getCustomersByCity("Blore");
	for(CustomerTO ct: list){
		System.out.println(ct);
	}
	
	//4.getCustomerCount
	System.out.println("getCustomerCount");
	int count=cdao.getCustomersCount();
	System.out.println("No of Cust:"+count);
	
	//5.getCustomerCityByEmail
	System.out.println("getCustomerCityByEmail");
	String ci=cdao.getCustomerCityByEmail("g@j.com");
	System.out.println(ci);
	
	//6.getCustomerPhoneByEmail
	System.out.println("getCustomerPhoneByEmail");
	Long ph=cdao.getCustomerPhoneByEmail("g@j.com");
	System.out.println(ph);	
	}
}
