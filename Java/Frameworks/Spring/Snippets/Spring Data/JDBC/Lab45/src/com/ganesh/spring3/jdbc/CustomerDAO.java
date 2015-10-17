package com.ganesh.spring3.jdbc;

import java.util.List;


public interface CustomerDAO {
	public void addCustomer(CustomerTO cto);
	public List<CustomerTO> getAllCustomers();
}
