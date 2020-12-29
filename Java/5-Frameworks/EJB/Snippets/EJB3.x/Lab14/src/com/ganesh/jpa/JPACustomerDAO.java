package com.ganesh.jpa;

public class JPACustomerDAO implements CustomerDAO {

	public void addCustomer(CustomerTO cto) {
		Customer cust = new Customer(cto.getCname(),cto.getEmail(),cto.getPhone(),cto.getCity(),cto.getBal());
		JPATemplate.persist(cust);		
	}

	public void deleteCustomer(int cid) {
		JPATemplate.remove(Customer.class, cid);
	}

	public CustomerTO getCustomerByCid(int cid) {
		Customer cust = (Customer)JPATemplate.getReference(Customer.class, cid);
		CustomerTO cto = new CustomerTO(cust.getCid(), cust.getEmail(),cust.getCname(), cust.getPhone(),cust.getCity(),cust.getBal());
		return cto;
	}
	public void updateCustomer(CustomerTO cto) {
		Customer cust = new Customer(cto.getCid(),cto.getCname(),cto.getEmail(),cto.getPhone(),cto.getCity(),cto.getBal());
		JPATemplate.merge(cust);
	}

	
	
	
}
