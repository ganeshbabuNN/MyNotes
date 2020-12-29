package com.ganesh.spring.hibernate;

import java.util.List;

public interface CustomerDAO {
	public List<CustomerTO> getAllCustomers();
	public CustomerTO getCustomerByEmail(String email);
	public List<CustomerTO> getCustomersByCity(String city);
	public int getCustomersCount();
	public String getCustomerCityByEmail(String email);
	public Long getCustomerPhoneByEmail(String email);
}
