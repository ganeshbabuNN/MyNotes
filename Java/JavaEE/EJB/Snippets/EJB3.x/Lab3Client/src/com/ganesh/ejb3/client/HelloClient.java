package com.ganesh.ejb3.client;

import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;

import com.ganesh.ejb3.hello.HelloRemote;

public class HelloClient {
	public static void main(String[] args) {
		try {
			Properties p = new Properties();
			p.put(Context.INITIAL_CONTEXT_FACTORY,"weblogic.jndi.WLInitialContextFactory");
			p.put(Context.PROVIDER_URL,"t3://localhost:8001");
			Context ctx = new InitialContext(p);
			Object obj = ctx.lookup("HelloBean#com.ganesh.ejb3.hello.HelloRemote");
			HelloRemote hello = (HelloRemote)obj;
		    String smg = hello.getMessage("I love you banu");
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
