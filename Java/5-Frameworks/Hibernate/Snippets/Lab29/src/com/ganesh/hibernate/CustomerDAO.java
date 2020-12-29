package com.ganesh.hibernate;

import java.util.List;

public interface CustomerDAO {
	public Customer getCustomerByEmail(String email);
	public List<Customer> getAllCustomer();
	public List<Customer> getCustomersByStatus(String status);

}
