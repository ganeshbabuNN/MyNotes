package com.ganesh.spring3.jdbc;

import java.util.List;

public interface CustomerDAO {
	public List<CustomerTO> getAllCustomers();
	public CustomerTO getCustomerByCid(int cid);
	public CustomerTO getCustomerByEmail(String email);
	public List<CustomerTO> getCustomersByCity(String city);
	public int getCustomerCount();
	public String getCustomerCityByEmail(String email);
	public Long getCustomerPhoneByEmail(String email);	
}
