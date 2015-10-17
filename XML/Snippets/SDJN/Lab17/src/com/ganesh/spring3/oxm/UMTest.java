package com.ganesh.spring3.oxm;

import org.springframework.context.*;
import org.springframework.context.support.*;

public class UMTest {
	public static void main(String[] args) {
		try{
			ApplicationContext ctx= new ClassPathXmlApplicationContext("jlcindia.xml");
			JLCMarshaller oxm=(JLCMarshaller)ctx.getBean("oxm");
			Customers cust=(Customers)oxm.load("src/customers.xml");
			System.out.println(cust);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
