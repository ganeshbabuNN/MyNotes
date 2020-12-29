package com.ganesh.spring3.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class JdbcCustomerDAO implements CustomerDAO {

	@Autowired
	JdbcTemplate jdbcTemp;
	public void addCustomer(CustomerTO cto) {
		String sql = "insert into customers values(?,?,?,?,?)";
		Object args[]={cto.getCid(),cto.getCname(),cto.getEmail(),cto.getPhone(),cto.getCity()};
		jdbcTemp.update(sql, args);
	}

	public void deleteCustomer(int cid) {
		String sql ="delete from customers where cid=?";
		Object args[]={cid};
		jdbcTemp.update(sql, args);
	}
	
	public void updateCustomer(CustomerTO cto) {
		String sql ="update customers set cname=?,email=?,phone=?,city=? where cid=?";
		Object args[]={cto.getCname(),cto.getEmail(),cto.getPhone(),cto.getCity(),cto.getCid()};
		jdbcTemp.update(sql, args);
	}

}
