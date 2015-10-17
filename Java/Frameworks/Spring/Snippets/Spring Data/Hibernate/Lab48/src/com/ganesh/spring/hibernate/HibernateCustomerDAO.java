package com.ganesh.spring.hibernate;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.LockMode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;

public class HibernateCustomerDAO implements CustomerDAO{
	
	@Autowired
	HibernateTemplate hibernateTemp;
	
	public void addCustomer(CustomerTO cto) {
		Customer cust = new Customer(cto.getCname(), cto.getEmail(), cto.getPhone(), cto.getCity());
		hibernateTemp.save(cust);
	}

	public void deleteCustomer(int cid) {
		Customer c=(Customer)hibernateTemp.load(Customer.class, cid);
		hibernateTemp.delete(c,LockMode.NONE);
	}
	
	public List<CustomerTO> getAllCustomers(){
		List<CustomerTO> ctolist=new ArrayList<CustomerTO>();
		String hql="from Customer c";
		List<Customer> list=hibernateTemp.find(hql);
		for(Customer c: list){
			CustomerTO cto= new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
			ctolist.add(cto);
		}
		return ctolist;
	}
	
	public void updateCustomer(CustomerTO cto) {
		Customer c =(Customer) hibernateTemp.load(Customer.class, cto.getCid());
		c.setCid(cto.getCid());
		c.setCname(cto.getCname());
		c.setEmail(cto.getEmail());
		c.setCity(cto.getCity());
		hibernateTemp.update(c,LockMode.NONE);
	}
	
	public CustomerTO getCustomerByCid(int cid) {
		Customer c=(Customer)hibernateTemp.load(Customer.class, cid);
		CustomerTO cto = new CustomerTO(c.getCid(),c.getCname(),c.getEmail(),c.getPhone(),c.getCity());
		return cto;
	}

}
