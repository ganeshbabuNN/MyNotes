package com.ganesh.jpa;

public class DAOFactory {
	static CustomerDAO cdao;
	static {
		cdao = new JPACustomerDAO();
	}
	public static CustomerDAO getCustomerDAO(){
		return cdao;
	}
}
