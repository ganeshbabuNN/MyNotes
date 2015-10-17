package com.ganesh.bookstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Iterator;
import java.util.List;

import com.ganesh.bookstore.to.OrderItemTO;
import com.ganesh.bookstore.to.OrderTO;
import com.ganesh.bookstore.util.DataSourceUtil;

public class JdbcOrderDAO implements OrderDAO {

	public int placeOrder(OrderTO oto, List items) {
		int OID=0;
		Connection con = null;
		PreparedStatement ps = null;
		try{
			con = DataSourceUtil.getConnection();
			String sql1="insert into orders values(?,?,?,?,?,?);";
			ps= con.prepareStatement(sql1);
			OID=getNextOrderID();
			ps.setInt(1, OID);
			ps.setString(2, oto.getCid());
			ps.setString(3, oto.getOrderDate());
			ps.setInt(4, oto.getTotlQty());
			ps.setDouble(5, oto.getTotalCost());
			ps.setString(6, oto.getStatus());
			ps.executeUpdate();
			
			String sql2="insert into orders values(?,?,?,?,?,?);";
			ps= con.prepareStatement(sql2);
			Iterator  it = items.iterator();
			int itemId =1;
			while(it.hasNext()){
			OrderItemTO oito =(OrderItemTO)it.next();
			ps.setInt(1, itemId++);
			ps.setInt(2, OID);
			ps.setString(3, oito.getBid());
			ps.setInt(4, oito.getQty());
			ps.setDouble(5, oito.getCost());
			ps.addBatch();
			}
			ps.executeBatch();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DataSourceUtil.cleanup(ps, con);
		}
		return OID;
	}

	private int getNextOrderID() {
		int oid = 1;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs =null;
		try{
			con = DataSourceUtil.getConnection();
			ps = con.prepareStatement("select max(orderId) from orders");
			rs = ps.executeQuery();
			if(rs.next()){
				int x = rs.getInt(1);
				oid = x+1;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DataSourceUtil.cleanup(rs, ps,con);				
			}
		return oid;
	}

}
