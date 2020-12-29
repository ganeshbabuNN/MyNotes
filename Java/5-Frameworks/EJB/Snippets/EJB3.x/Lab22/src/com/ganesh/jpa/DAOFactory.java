package com.ganesh.jpa;

public class DAOFactory {
	static CustomerDAO customerDAO;
	static {
		customerDAO = new JPACustomerDAO();
	}
	
	public static CustomerDAO getCustomerDAO() {
		return customerDAO;
	}
}
