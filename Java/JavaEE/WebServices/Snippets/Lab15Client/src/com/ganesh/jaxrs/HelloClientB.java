package com.ganesh.jaxrs;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

public class HelloClientB {
	public static void main(String[] args) {
	ClientConfig config = new DefaultClientConfig();
	Client client = Client.create(config);
	String url1="http://localhost:5555/Lab15/services/hello/gm2";
	WebResource webres = client.resource(url1);
	User user = new User();
	user.setName("ganesh");
	user.setEmail("ga@l.com");
	ClientResponse cresp=webres.post(ClientResponse.class,user);
	System.out.println("status"+cresp.getStatus());
	if(cresp.hasEntity()){
		UserMessage um=cresp.getEntity(UserMessage.class);
		System.out.println("Msg"+um.getMsg());
	}
	}	
}
