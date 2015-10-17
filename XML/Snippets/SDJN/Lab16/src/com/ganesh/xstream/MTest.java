package com.ganesh.xstream;

import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;


import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

public class MTest {
	public static void main(String[] args) {
		try{
			Customer cust1 = new Customer(109, "ganesh", "ganesh@j.com", 987363233);
			Account acc1= new Account(111, "SA", 9999.00);
			cust1.setAccount(acc1);
			Customer cust2= new Customer(109, "Vedha","Vedha@jl.com", 855665656);
			Account acc2 = new Account(111, "SA", 9999.22);
			cust2.setAccount(acc2);
			
			List<Customer> custs= new ArrayList<Customer>();
			custs.add(cust1);
			custs.add(cust2);
			custs.add(cust1);
			custs.add(cust2);
			
			XStream xs = new XStream(new DomDriver());
			xs.alias("customers", List.class);
			xs.alias("customer", Customer.class);
			xs.alias("account", Account.class);
			xs.setMode(XStream.NO_REFERENCES);
			xs.toXML(custs, new FileWriter("src/cust.xml"));
			}catch(Exception e){
			e.printStackTrace();
		}
	}
}
