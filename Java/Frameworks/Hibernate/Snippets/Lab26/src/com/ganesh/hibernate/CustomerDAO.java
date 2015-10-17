package com.ganesh.hibernate;

public interface CustomerDAO {
	public int addCustomer(CustomerTO cust);
	public void updateCustomer(CustomerTO cust);
	public void delteCustomer(int cid);
	public CustomerTO getCustomerByCid(int cid);

}
