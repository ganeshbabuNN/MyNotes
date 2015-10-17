package com.ganesh.jaxrs;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

public class HelloClientA {
	public static void main(String[] args) {
	ClientConfig config = new DefaultClientConfig();
	Client client = Client.create(config);
	String url1="http://localhost:5555/Lab15/services/hello/gm1/Sri";
	WebResource webres = client.resource(url1);
	String str = webres.get(String.class);
	System.out.println(str);
	
	System.out.println();
	String url2="http://localhost:5555/Lab15/services/hello/gm2/";
	webres =client.resource(url2);
	User user = new User();
	user.setName("ganesh");
	user.setEmail("ga@l.com");
	UserMessage um=webres.post(UserMessage.class,user);
	System.out.println(um.getMsg());	
	}	
}
