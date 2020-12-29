package com.ganesh.spring3.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

public class JdbcCustomerDAO implements CustomerDAO {

	@Autowired
	SimpleJdbcTemplate simplejdbcTemp;
	public void addCustomer(CustomerTO cto) {
		String sql = "insert into customers values(?,?,?,?,?)";
		simplejdbcTemp.update(sql, cto.getCid(),cto.getCname(),cto.getEmail(),cto.getPhone(),cto.getCity());
	}

	public void deleteCustomer(int cid) {
		String sql="delete from customers where cid=?";
		simplejdbcTemp.update(sql, cid);
	}
	
	public void updateCustomer(CustomerTO cto) {
		String sql="update customers set cname=?,email=?,phone=?,city=? where cid=?";
		simplejdbcTemp.update(sql, cto.getCname(),cto.getEmail(),cto.getPhone(),cto.getCity(),cto.getCid());
	}
}
