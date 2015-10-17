package com.ganesh.xstream;

import java.io.FileReader;
import java.util.List;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class UMTest {
	public static void main(String[] args) {
		try{
			XStream xs = new XStream(new DomDriver());
			xs.alias("customers", List.class);
			xs.alias("customer", Customer.class);
			xs.alias("account", Account.class);
			@SuppressWarnings("unchecked")
			List<Customer> custs =(List<Customer>)xs.fromXML(new FileReader("src/cust.xml"));
			for(Customer cust:custs){
				System.out.println(cust);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
