package com.ganesh.hibernate;

import java.util.List;

public interface CustomerDAO {
	public int addCustomer(Customer cust);
	public void updateCustomer(Customer cust);
	public void deleteCustomer(int cid);
	public Customer getCustomerByCid(int cid);
	public Customer getCustomerByEmail(String email);
	public Customer getCustomerByCardNo(int ccno);
	public List<Customer> getAllCustomer();
	public List<Customer> getAllCustomers(int start,int total);
	public List<Customer> getCustomersByCity(String city);
	public List<Customer> getCustomersByCity(String city,int start, int total);
	public List<Customer> getCustomersByName(String name);
	public List<Customer> getCustomersByName(String name,int start, int total);
	public List<Customer> getCustomersByCardType(String cardType);
	public List<Customer> getCustomersByCardType(String cardType,int start,int total);
	public List<Customer> getCustomersByStatus(String status);
	public List<Customer> getCustomersByStatus(String status,int start, int total);
	public List<Customer> getCustomersByBal(double bal);
	public List<Customer> getCustomersByBal(double bal,int start,int total);
	public List<Customer> getCustomers(String city,String cardType);
	public List<Customer> getCustomers(String city,String cardType,int start,int total);
	public List<Customer> getCustomers(String city,String cardType,String status);
	public List<Customer> getCustomers(String city,String cardType,String status, int start, int total);

}
