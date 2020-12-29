package com.ganesh.ds.client;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import com.ganesh.ds.util.DataSourceUtil;

public class DSLab {
public static void main(String[] args) {
	DataSource ds = null;
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	try {
		ds = DataSourceUtil.getDataSource();
		con = ds.getConnection();
		ps=con.prepareStatement("select * from accounts");
		rs=ps.executeQuery();
		while(rs.next()){
			System.out.println(rs.getInt(1)+"\t"+rs.getString(2)+"\t"+rs.getString(3));
		}
	}catch(Exception e){
		e.printStackTrace();
	}finally {
		DataSourceUtil.cleanup(rs, ps, con);
	}
  }
}
