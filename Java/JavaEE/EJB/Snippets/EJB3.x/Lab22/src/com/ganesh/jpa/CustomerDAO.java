package com.ganesh.jpa;

import java.util.List;

public interface CustomerDAO {
	public void addCustomers(Customer cust);
	public void updateCustomers(Customer cust);
	public void deleteCustomers(int cid);
	public Customer getCustomersByCid(int cid);
	public List<Object> getAllCustomesr();
	public List<Object> getCustomersByCity(String city);
	public List<Object> getAllCustomers(int start,int total);
	public List<Object> getCustomersByCity(String city,int start,int total);
	public List<Object> getCustomersByName(String cname);
	public List<Object> getCustomersByName(String cname,int start,int total);
	public Customer getCustomersByEmail(String email);
}
