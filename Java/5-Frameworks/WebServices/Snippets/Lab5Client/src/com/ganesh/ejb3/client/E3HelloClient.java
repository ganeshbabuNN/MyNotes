package com.ganesh.ejb3.client;

import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;

import com.ganesh.ejb3.HelloRemote;

public class E3HelloClient {
	public static void main(String[] args) {
		try{
			Properties p = new Properties();
			p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
			p.put(Context.PROVIDER_URL, "localhost:1099");
			//p.put(Context.PROVIDER_URL, "jnp://localhost:1099");
			p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming:org.jnp.interfaces");
			//p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");
			Context ctx = new InitialContext(p);
			Object obj = ctx.lookup("HelloBean/remote");
			HelloRemote hello= (HelloRemote)obj;
			String msg = hello.getMessage("I love you Banu ");
			System.out.println(msg);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
