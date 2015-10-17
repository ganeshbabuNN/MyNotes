package com.ganesh.jaxrs;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

public class CustomerClient {
	public static void main(String[] args) {
		ClientConfig config = new DefaultClientConfig();
		Client client = Client.create(config);
		
		//1.Get Customer By cid
		String url1="http://localhost:5555/Lab17/services/customer/getbyid/101";
		WebResource webres =client.resource(url1);
		
		//A.Getting XML as output
		String str= webres.get(String.class);
		System.out.println(str);
		
		//B.Getting Customer Ojbect as Ouput
		Customer cust = webres.get(Customer.class);
		System.out.println(cust);		
		
		//2.Get Customer by City
		String url2="http://localhost:5555/Lab17/services/customer/getbyCity/Blore";
		webres =client.resource(url2);
		
		
		//A.Getting XML as ouput
		str = webres.get(String.class);
		System.out.println(str);
		
		//B.Getting Customer Object as Output
		Customers cs = webres.get(Customers.class);
		for(Customer c:cs.getCustomer()){
			System.out.println(c);
		}
		
		//3.Add Customer
		String url3="http://localhost:5555/Lab17/services/customer/add/";
		 webres =client.resource(url3);
		 webres.post(cust);
		
		//3.Add Customer
		String url4="http://localhost:5555/Lab17/services/customer/update/";
	    webres =client.resource(url4);
	    webres.put(cust);		
	}
}
