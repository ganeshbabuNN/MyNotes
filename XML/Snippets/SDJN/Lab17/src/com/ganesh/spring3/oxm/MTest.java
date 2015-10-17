package com.ganesh.spring3.oxm;

import org.springframework.context.*;
import org.springframework.context.support.*;

public class MTest {
	public static void main(String[] args) {
		try{
			ApplicationContext ctx= new ClassPathXmlApplicationContext("jlcindia.xml");
			JLCMarshaller oxm=(JLCMarshaller)ctx.getBean("oxm");
			Customer cust = new Customer(109, "ganesh", "ganesh@l.com", 9811);
			Account acc = new Account(111, "SA", 9999.99);
			cust.setAccount(acc);
			Customers cs = new Customers();
			cs.addCustomer(cust);
			cs.addCustomer(cust);
			oxm.save(cs, "src/customers.xml");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
