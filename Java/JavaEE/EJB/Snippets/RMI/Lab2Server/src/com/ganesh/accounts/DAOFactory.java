package com.ganesh.accounts;

public class DAOFactory {
static AccountDAO accountDAO;
static {
		accountDAO = new JDBCAccountDAO();
	}
public static AccountDAO getAccountDAO() {
	return accountDAO;
}
}
