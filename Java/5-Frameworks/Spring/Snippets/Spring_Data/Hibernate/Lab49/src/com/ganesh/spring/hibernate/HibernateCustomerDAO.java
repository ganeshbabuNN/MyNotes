package com.ganesh.spring.hibernate;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.LockMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class HibernateCustomerDAO implements CustomerDAO{
	
	@Autowired
	HibernateTemplate hibernateTemp;

	public List<CustomerTO> getAllCustomers() {
		List<CustomerTO> ctolist= new ArrayList<CustomerTO>();
			String hql="from Customer c";
			List<Customer> list=hibernateTemp.find(hql);
			for(Customer c:list){
				CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
				ctolist.add(cto);				
			}
		return ctolist;
	}

	public List<CustomerTO> getCustomersByCity(String city) {
		List<CustomerTO> ctoList = new ArrayList<CustomerTO>();
		String hql="from Customer c where c.city=?";
		List<Customer> list=hibernateTemp.find(hql,city);
		for(Customer c: list){
			CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
			ctoList.add(cto);
		}
		return ctoList;
	}
	
	public CustomerTO getCustomerByEmail(String email) {
		String hql="from Customer c where c.email=?";
		List<Customer> list=hibernateTemp.find(hql,email);
		Customer c=list.get(0);
		CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
		return cto;
	}

	public String getCustomerCityByEmail(String email) {
		String hql="from Customer c where c.email=?";
		List<Customer> list=hibernateTemp.find(hql,email);
		Customer c=list.get(0);
		return c.getCity();
	}
	
	public int getCustomersCount() {
		String hql="from Customer c";
		List<Customer> list=hibernateTemp.find(hql);
		return list.size();
	}

	public Long getCustomerPhoneByEmail(String email) {
		//List<CustomerTO> ctoList = new ArrayList<CustomerTO>();
		String hql="from Customer c where c.email=?";
		List<Customer> list=hibernateTemp.find(hql,email);
		Customer c=list.get(0);
		return c.getPhone();
//		for(Customer c: list){
//			CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
//			ctoList.add(cto);		
//		}
//		return ctoList;
	}
	
	
}
