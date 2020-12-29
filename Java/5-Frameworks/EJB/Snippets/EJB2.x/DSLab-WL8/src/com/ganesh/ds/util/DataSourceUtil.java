package com.ganesh.ds.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;
	
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DataSourceUtil {
	static DataSource ds = null;
	static {
		try {
			Properties p = new Properties();
			/*	//properties required for JBOSS server
			p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
			p.put(Context.PROVIDER_URL, "localhost:1099");
			p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");*/
			
			//properties required for weblogic Server
				p.put(Context.INITIAL_CONTEXT_FACTORY, "weblogic.jndi.WLInitialContextFactory");
				p.put(Context.PROVIDER_URL, "t3://localhost:7001"); 
			
			Context ctx = new InitialContext(p);
			Object obj = ctx.lookup("MySQLDataSourceJNDI");
			ds =(DataSource)obj;
		}catch(Exception e){
			e.printStackTrace();
		}		
	}
	public static DataSource getDataSource(){
		return ds;
	}
	
	public static void cleanup(ResultSet rs,Statement st,Connection con){
		try{
			if(rs!=null)rs.close();
			if(st!=null)st.close();
			if(con!=null)con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
