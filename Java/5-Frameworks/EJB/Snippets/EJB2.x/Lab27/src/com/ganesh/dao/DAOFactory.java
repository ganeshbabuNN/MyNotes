package com.ganesh.dao;

public class DAOFactory {
	static AccountDAO accountDAO;
	static {
		accountDAO = new HibernateAccountDAO();
	}

	public static AccountDAO getAccountDAO() {
		return accountDAO;
	}
}
