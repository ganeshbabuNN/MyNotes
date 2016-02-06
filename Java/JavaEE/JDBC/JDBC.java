package com.ganesh.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
public class Lab1 {
	public static void main(String[] args) {
		Connection con = null;
		Statement st = null;
		try {
			//step1 : load the Driver Manager
			Class.forName("oracle.jdbc.driver.OracleDriver");			
			//step2 : East the connection
			con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "ganesh");
			//step3 : prepare the SQL statement
			 String sql = "insert into students values(2,'ganesh')";			
			//step4 : Create the JDBC Statement
			 st=con.createStatement();		
			//step5 :Submit the SQL statements to DB using JDBC Statement
			int x =st.executeUpdate(sql);
			//step 6 : Process the result
			if(x==1) {
				System.out.println("record inserted");
			}else {
				System.out.println("Record not inserted");
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			//step 7 : close the connection
			try{
				if(st!=null)
					st.close();
				if(con!=null)
					con.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}

}
