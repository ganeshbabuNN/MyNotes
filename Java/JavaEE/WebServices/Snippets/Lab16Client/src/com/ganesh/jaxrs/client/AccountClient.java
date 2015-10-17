package com.ganesh.jaxrs.client;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

public class AccountClient {
	public static void main(String[] args) {
	ClientConfig config = new DefaultClientConfig();
	Client client = Client.create(config);
	String url1="http://localhost:5555/Lab16/services/account/getbal/101";
	WebResource webres = client.resource(url1);
	Account acc = webres.get(Account.class);
	System.out.println("Balance" +acc.getBalance());
	System.out.println();
	String url2="http://localhost:5555/Lab16/services/account/deposit/102/5000";
	webres=client.resource(url2);
	String msg=webres.get(String.class);
	System.out.println(msg);
	System.out.println();	
	String url3="http://localhost:5555/Lab16/services/account/withdraw/103/6000";
	webres=client.resource(url3);
	String msg1=webres.get(String.class);
	System.out.println(msg1);
	
	
	}
	
}
