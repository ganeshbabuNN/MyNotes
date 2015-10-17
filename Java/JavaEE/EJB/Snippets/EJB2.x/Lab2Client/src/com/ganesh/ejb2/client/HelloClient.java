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
			p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
			p.put(Context.PROVIDER_URL, "localhost:1099");
			p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");
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
