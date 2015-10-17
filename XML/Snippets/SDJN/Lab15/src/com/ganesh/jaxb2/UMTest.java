package com.ganesh.jaxb2;

import java.io.FileInputStream;
import java.util.List;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

public class UMTest {
	public static void main(String[] args) {
		try{
			JAXBContext ctx = JAXBContext.newInstance(Customers.class);
			Unmarshaller um= ctx.createUnmarshaller();
			Customers cs=(Customers)um.unmarshal(new FileInputStream("src/cust.xml"));
			List<Customer> custs=cs.getCustomers();
			for(Customer cust:custs){
				System.out.println(cust);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
