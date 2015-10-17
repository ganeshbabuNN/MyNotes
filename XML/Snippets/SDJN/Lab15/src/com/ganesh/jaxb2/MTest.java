package com.ganesh.jaxb2;

import java.io.FileOutputStream;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;

public class MTest {
	public static void main(String[] args) {
		try{
			Customer cust = new Customer(109, "ga", "g@l.com", 4545);
			Account acc= new Account(111, "SA", 9999.99);
			cust.setAccount(acc);
			Customers cs = new Customers();
			cs.addCustomer(cust);
			JAXBContext ctx= JAXBContext.newInstance(Customers.class);
			Marshaller mar = ctx.createMarshaller();
			mar.setProperty("jaxb.formatted.output", new Boolean(true));
			mar.marshal(cs, new FileOutputStream("src/cust.xml"));
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
