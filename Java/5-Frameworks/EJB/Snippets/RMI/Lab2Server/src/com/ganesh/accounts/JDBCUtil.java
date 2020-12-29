package com.ganesh.accounts;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBCUtil {
	public static Connection getOracleConnection() {
		Connection con = null;
		try {
			// 1)Load the Driver Class
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2)Establish the Connection
			con = DriverManager
					.getConnection("jdbc:oracle:thin:@localhost:1521:orcl",
							"ganesh", "Ga55word");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static Connection getMySQLConnection() {
		Connection con = null;
		try {
			// 1)Load the Driver Class
			Class.forName("com.mysql.jdbc.Driver");
			// 2)Establish the Connection
			con = DriverManager.getConnection("jdbc:mysql://localhost/b18db",
					"root", "jlcindia");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static void cleanup(Connection con, Statement smt) {
		try {
			// Releasing the Connection
			if (smt != null)
				smt.close();
			if (con != null)
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static void cleanup(Connection con, Statement smt, ResultSet rs) {
		try {
			// Releasing the Connection
			if (rs != null)
				rs.close();
			if (smt != null)
				smt.close();
			if (con != null)
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
