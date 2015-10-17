package com.ganesh.hibernate;

public class HibernateCustomerDAO implements CustomerDAO {

	public int addCustomer(CustomerTO cto) {
		Customer cust = new Customer(cto.getCid(), cto.getCname(), cto.getEmail(), cto.getPhone(),cto.getCity(), cto.getStatus());
		Integer it = (Integer)AHibernateTemplate.saveObject(cust);
		return it.intValue();
	}

	public void updateCustomer(CustomerTO cto) {
		Customer cust = new Customer(cto.getCid(), cto.getCname(), cto.getEmail(), cto.getPhone(),cto.getCity(), cto.getStatus());
		AHibernateTemplate.updateObject(cust);
	}

	public void delteCustomer(int cid) {
		AHibernateTemplate.deleteObject(Customer.class, cid);
	}

	public CustomerTO getCustomerByCid(int cid) {
	 Customer cust=(Customer)AHibernateTemplate.loadObject(Customer.class, cid);
	 CustomerTO cto = new CustomerTO(cust.getCid(),cust.getCname(), cust.getEmail(), cust.getPhone(), cust.getCity(), cust.getStatus());
		return cto;
	}

}
