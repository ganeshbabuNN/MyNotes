package com.ganesh.client;

import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import com.ganesh.clientutility.ClientUtility;
import com.ganesh.ejb3.business.HelloWorld;

public class HelloWorldBeanClient {
	public static void main(String[] args) {		
	try {
		Properties p = new Properties();		
		p.put(Context.URL_PKG_PREFIXES, "org.jboss.ejb.client.naming");
		Context ctx = new InitialContext(p);
		HelloWorld  hello = (HelloWorld)ctx.lookup("ejb:/Lab4ServerJ7x//HelloWorldBean!com.ganesh.ejb3.business.HelloWorld");
		String msg = hello.sayHello();
		System.out.println(msg);
	}catch(NamingException e){
		e.printStackTrace();		
	}
 }   
}


