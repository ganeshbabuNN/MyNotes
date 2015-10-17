package com.ganesh.spring.hibernate;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Expression;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class HibernateCustomerDAO implements CustomerDAO{
	
	@Autowired
	HibernateTemplate hibernateTemp;

	public List<CustomerTO> getAllCustomers() {
		List<CustomerTO> ctolist= new ArrayList<CustomerTO>();
		DetachedCriteria dc= DetachedCriteria.forClass(Customer.class);
		List<Customer> list=hibernateTemp.findByCriteria(dc);
		for(Customer c:list){
			CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
			ctolist.add(cto);
		}
		return ctolist;
	}

	public List<CustomerTO> getCustomersByCity(String city) {
		List<CustomerTO> ctoList = new ArrayList<CustomerTO>();
		DetachedCriteria dc = DetachedCriteria.forClass(Customer.class);
		hibernateTemp.setCacheQueries(true);
		List<Customer> list=hibernateTemp.findByCriteria(dc);
		for(Customer c: list){
			CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
			ctoList.add(cto);
		}
		return ctoList;
	}
	
	public CustomerTO getCustomerByEmail(String email) {
		DetachedCriteria dc = DetachedCriteria.forClass(Customer.class);
		dc.add(Expression.eq("email", email));
		List<Customer> list= hibernateTemp.findByCriteria(dc);
		Customer c=list.get(0);
		CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
		return cto;		
	}

	public String getCustomerCityByEmail(String email) {
		DetachedCriteria dc= DetachedCriteria.forClass(Customer.class);
		dc.add(Expression.eq("email", email));
		List<Customer> list=hibernateTemp.findByCriteria(dc);
		Customer c=list.get(0);
		return c.getCity();
	}
	
	public int getCustomersCount() {
		DetachedCriteria dc= DetachedCriteria.forClass(Customer.class);
		List<Customer> list=hibernateTemp.findByCriteria(dc);
		return list.size();
	}

	public Long getCustomerPhoneByEmail(String email) {
		DetachedCriteria dc= DetachedCriteria.forClass(Customer.class);
		dc.add(Expression.eq("email", email));
		List<Customer> list= hibernateTemp.findByCriteria(dc);
		Customer c=list.get(0);
		return c.getPhone();
	}
	
	
}
