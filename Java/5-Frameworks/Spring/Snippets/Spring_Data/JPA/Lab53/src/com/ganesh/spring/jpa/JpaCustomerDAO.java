package com.ganesh.spring.jpa;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.jpa.JpaTemplate;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

public class JpaCustomerDAO implements CustomerDAO {
	
	@Autowired
	JpaTemplate jpaTemp=null;
	
	@Autowired
	JpaTransactionManager txManager=null;
	
	public List<CustomerTO> getAllCustomers() {
		List<CustomerTO> ctolist= new ArrayList<CustomerTO>();
		String jpaql="from Customer c";
		List<Customer> list=jpaTemp.find(jpaql);
		for(Customer c:list){
			CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
			ctolist.add(cto);				
		}
		return ctolist;
	}

	public List<CustomerTO> getCustomersByCity(String city) {
		List<CustomerTO> ctoList = new ArrayList<CustomerTO>();
		String jpaql="from Customer c where c.city=?";
		List<Customer> list=jpaTemp.find(jpaql,city);
		for(Customer c: list){
			CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
			ctoList.add(cto);
		}
		return ctoList;
	}
	
	public CustomerTO getCustomerByEmail(String email) {
		String jpaql="from Customer c where c.email=?";
		List<Customer> list=jpaTemp.find(jpaql,email);
		Customer c=list.get(0);
		CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
		return cto;
	}

	public String getCustomerCityByEmail(String email) {
		String jpaql="from Customer c where c.email=?";
		List<Customer> list=jpaTemp.find(jpaql,email);
		Customer c=(Customer)list.get(0);
		return c.getCity();
	}
	
	public int getCustomersCount() {
		String jpaql="from Customer c";
		List<Customer> list=jpaTemp.find(jpaql);
		return list.size();
	}

	public Long getCustomerPhoneByEmail(String email) {
		String jpaql="from Customer c where c.email=?";
		List<Customer> list=jpaTemp.find(jpaql,email);
		Customer c=(Customer)list.get(0);
		return c.getPhone();
	}
}
