package com.ganesh.ejb2.client;

import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;

import com.ganesh.ejb2.hello.HelloHome;
import com.ganesh.ejb2.hello.HelloRemote;

public class HelloClient {
	public static void main(String[] args) {
	
	try {
		Properties p = new Properties();
		p.put(Context.INITIAL_CONTEXT_FACTORY,"weblogic.jndi.WLInitialContextFactory");
		p.put(Context.PROVIDER_URL, "t3://localhost:7001");
		Context ctx = new InitialContext(p);
		Object obj = ctx.lookup("JLCHelloHomeJNDI");
		HelloHome home =(HelloHome)obj;
		HelloRemote hello = home.create();
		String msg = hello.getMessage("ganesh");
		String msg1 = hello.getMessage("I love you banu");
		String msg2 = hello.getMessage("I love you my baby");
		String msg3 = hello.getMessage("How are you doing?");
		System.out.println(msg);
		System.out.println(msg1);	
		System.out.println(msg2);	
		System.out.println(msg3);	
	}catch(Exception e){
		e.printStackTrace();		
	}
}
}
