package com.ganesh.spring3.jdbc;

import java.util.List;

public interface CustomerDAO {
	public void addCustomer(CustomerTO cto);
	public void updateCustomer(CustomerTO cto);
	public void deleteCustomer(int cid);
	public CustomerTO getCustomerByCid(int cid);
	public List<CustomerTO> getAllCustomers();
}
