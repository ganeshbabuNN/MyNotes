package com.ganesh.jpa;

import java.util.List;

public class JPACustomerDAO implements CustomerDAO {

	public void addCustomers(Customer cust) {
		JPATemplate.save(cust);
	}
	
	public void deleteCustomers(int cid) {
		JPATemplate.delete(Customer.class, cid);
	}

	public void updateCustomers(Customer cust) {
		JPATemplate.save(cust);
	}
	
	public List<Object> getAllCustomesr() {
		String jpaql=" from Customer c";
		return JPATemplate.findList(jpaql);
	}
	
	public List<Object> getCustomersByCity(String city) {
		String jpaql=" from Customer c where c.city=?";
		return JPATemplate.findList(jpaql, city);
	}
	
	public Customer getCustomersByEmail(String email) {
		String jpaql=" from Customer c where c.email=?";
		return (Customer)JPATemplate.findList(jpaql, email);
	}
	
	public List<Object> getAllCustomers(int start, int total) {
		String jpaql=" from Customer c";
		return JPATemplate.findList(jpaql, start, total);
	}
	
	public Customer getCustomersByCid(int cid) {
		return (Customer)JPATemplate.load(Customer.class, cid);
	}	

	public List<Object> getCustomersByCity(String city, int start, int total) {
		String jpaql=" from Customer c where c.city=?";
		return JPATemplate.findList(jpaql, start, total, city);
	}

	public List<Object> getCustomersByName(String cname) {
		String jpaql=" from Customer c where c.cname=?";
		return JPATemplate.findList(jpaql,cname);
	}

	public List<Object> getCustomersByName(String cname, int start, int total) {
		String jpaql=" from Customer c where c.cname=?";
		return JPATemplate.findList(jpaql, start, total, cname);
	}

}
