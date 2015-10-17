package com.ganesh.spring3.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class JdbcCustomerDAO implements CustomerDAO {

	@Autowired
	JdbcTemplate jdbcTemp;
	
	public List<CustomerTO> getAllCustomers() {
		String sql="select * from customers";
		List<CustomerTO> list=jdbcTemp.query(sql, new CustomerRowMapper());
		return list;
	}
	
	public int getCustomerCount() {
		String sql="select count(*) from customers";
		return jdbcTemp.queryForInt(sql);
	}


	public CustomerTO getCustomerByCid(int cid) {
		String sql="select * from customers where cid=?";
		Object args[]={cid};
		CustomerTO cto=(CustomerTO)jdbcTemp.queryForObject(sql, args,new CustomerRowMapper());
		return cto;
	}
	
	public List<CustomerTO> getCustomersByCity(String city) {
		String sql="select * from customers where city=?";
		Object args[]={city};
		List<CustomerTO> list=jdbcTemp.query(sql, args, new CustomerRowMapper());
		return list;
	}

	public CustomerTO getCustomerByEmail(String email) {
		String sql="select * from customers where email=?";
		Object args[]={email};
		CustomerTO cto=(CustomerTO)jdbcTemp.queryForObject(sql, args, new CustomerRowMapper());
		return cto;
	}
	public String getCustomerCityByEmail(String email) {
		String sql="select city from customers where email=?";
		Object args[]={email};
		String city=(String)jdbcTemp.queryForObject(sql, args,String.class);		
		return city;
	}

	public Long getCustomerPhoneByEmail(String email) {
		String sql="select phone from customers where email=?";
		Object args[]={email};
		Long ph=(Long)jdbcTemp.queryForObject(sql, args,Long.class);		
		return ph;
	}
}
