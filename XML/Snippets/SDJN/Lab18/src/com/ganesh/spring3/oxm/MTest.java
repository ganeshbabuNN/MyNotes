package com.ganesh.spring3.oxm;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.*;
import org.springframework.context.support.*;

public class MTest {
	public static void main(String[] args) {
		try{
			ApplicationContext ctx= new ClassPathXmlApplicationContext("jlcindia.xml");
			JLCMarshaller oxm=(JLCMarshaller)ctx.getBean("oxm");
			Customer cust1 = new Customer(109, "ganesh", "ganesh@l.com", 9811);
			Account acc1 = new Account(111, "SA", 9999.99);
			cust1.setAccount(acc1);
			Customer cust2 = new Customer(110, "Babu", "Babu@l.com", 644);
			Account acc2 = new Account(111, "SA", 9999.99);
			cust2.setAccount(acc2);
			List<Customer> custs = new ArrayList<Customer>();
			custs.add(cust1);
			custs.add(cust2);
			oxm.save(custs, "src/customers.xml");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
