package com.ganesh.dao;

public class DAOFactory {
	public static UserDAO userDAO=null;
	private static AccountDAO accountDAO=null;
	static{
		userDAO = new HibernateUserDAO();
		accountDAO= new HibernateAccountDAO();
	}
	public static UserDAO getUserDAO(){
		return userDAO;
	}
	
	public static AccountDAO getAccountDAO(){
		return accountDAO;
	}
}
