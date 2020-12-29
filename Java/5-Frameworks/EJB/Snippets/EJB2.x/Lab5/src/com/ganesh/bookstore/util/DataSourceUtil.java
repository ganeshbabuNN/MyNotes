package com.ganesh.bookstore.util;

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
		try{
			Context ctx = new InitialContext();
			Object obj = ctx.lookup("MySQLDataSourceJNDI");
			ds=(DataSource)obj;
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static Connection getConnection(){
		Connection con = null;
		try{
			con = ds.getConnection();
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
	
	public static void cleanup(ResultSet rs , Statement st,Connection con){
		try{
			if(rs!=null){
				rs.close();
			}
			if(st!=null){
				st.close();
			}
			if(con!=null){
				con.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static void cleanup(Statement st,Connection con){
		try{
			if(st!=null){
				st.close();
			}
			if(con!=null){
				con.close();
			}			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
