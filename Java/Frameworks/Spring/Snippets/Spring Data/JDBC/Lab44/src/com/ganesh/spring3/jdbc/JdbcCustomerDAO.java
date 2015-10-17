package com.ganesh.spring3.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;

public class JdbcCustomerDAO implements CustomerDAO {
	
	@Autowired
	SimpleJdbcTemplate simpleJdbcTemp;

	public List<CustomerTO> getAllCustomers() {
	 String sql="select * from customers";
	 List<CustomerTO> list= simpleJdbcTemp.query(sql,new CustomerRowMapper());
		return list;
	}

	public CustomerTO getCustomerByCid(int cid) {
		String sql="select * from customers where cid=?";
		CustomerTO cto=(CustomerTO)simpleJdbcTemp.queryForObject(sql,new CustomerRowMapper(),cid);
		return cto;
	}
	
	public List<CustomerTO> getCustomersByCity(String city) {
		String sql="select * from customers where city=?";
		List<CustomerTO> list=simpleJdbcTemp.query(sql,new CustomerRowMapper(),city);
		return list;
	}

	public CustomerTO getCustomerByEmail(String email) {
		String sql="select * from customers where email=?";
		CustomerTO cto=(CustomerTO)simpleJdbcTemp.queryForObject(sql, new CustomerRowMapper(), email);
		return cto;
	}

	
	public int getCustomerCount() {
		String sql="select count(*) from customers";	
		return simpleJdbcTemp.queryForInt(sql);
	}

	public String getCustomerCityByEmail(String email) {
		String sql="select city from customers where email=?";
		String city =(String)simpleJdbcTemp.queryForObject(sql, String.class, email);
		return city;
	}

	public Long getCustomerPhoneByEmail(String email) {
		String sql="select phone from customers where email=?";
		Long ph =(Long)simpleJdbcTemp.queryForObject(sql, Long.class, email);
		return ph;
	}
	
	
}
