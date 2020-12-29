package com.ganesh.spring3.jdbc;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;

public class JdbcCustomerDAO  implements CustomerDAO {
	
	@Autowired
	NamedParameterJdbcTemplate nameParameterJdbcTemp;
	
	public void updateCustomer(CustomerTO cto) {
		String sql="update customers set cname=:cname,email=:email,phone=:phone,city=:city where cid=:cid";
		Map<String,Object> parameters = new HashMap<String,Object>();
		parameters.put("cname", cto.getCname());
		parameters.put("email", cto.getEmail());
		parameters.put("phone",cto.getPhone());
		parameters.put("city", cto.getCity());
		parameters.put("cid", cto.getCid());
		
		nameParameterJdbcTemp.update(sql, parameters);
	}
	
	public CustomerTO getCustomerByCid(int cid) {
		String sql="select * from customers where cid=:cid";
		SqlParameterSource parameters = new MapSqlParameterSource("cid",cid);
		CustomerTO cto=(CustomerTO)nameParameterJdbcTemp.queryForObject(sql, parameters, new CustomerRowMapper());
		return cto;
	}
	
	public void addCustomer(CustomerTO cto) {
		String sql="insert into customers values(:cid,:cname,:email,:phone,:city)";
		Map<String,Object> parameters = new HashMap<String,Object>();
		parameters.put("cid", cto.getCid());
		parameters.put("cname", cto.getCname());
		parameters.put("email", cto.getEmail());
		parameters.put("phone", cto.getPhone());
		parameters.put("city", cto.getCity());
		
		nameParameterJdbcTemp.update(sql, parameters);
	}

	public void deleteCustomer(int cid) {
		String sql="delete from customers where cid=:cid";
		Map<String,Object> parameters = new HashMap<String, Object>();
		parameters.put("cid", cid);
		nameParameterJdbcTemp.update(sql, parameters);
	}
	
	public List<CustomerTO> getAllCustomers() {
		String sql="select * from customers";
		Map<String,?> map=null;
		List<CustomerTO> list=(List<CustomerTO>)nameParameterJdbcTemp.query(sql, map, new CustomerRowMapper());
		return list;
	}
	
	
	
}
