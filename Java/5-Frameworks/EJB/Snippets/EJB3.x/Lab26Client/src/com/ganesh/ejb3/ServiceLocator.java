package com.ganesh.ejb3;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;

public class ServiceLocator {
	static Context ctx = null;
	static Map jndiMap;
	static{
		try{
			//1.create the context object with App server
			//vendeor specific properties
			Properties p = new Properties();
			p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
			p.put(Context.PROVIDER_URL, "localhost:1099");
			p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");
			ctx = new InitialContext(p);
			jndiMap= new HashMap();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static Object getBusinessObject(String jndiName){
		Object obj=null;
		try{
			if(jndiMap.containsKey(jndiName)){
				obj=jndiMap.get(jndiName);
			}else{
				obj=ctx.lookup(jndiName);
				jndiMap.put(jndiName, obj);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return obj;
	}
}
