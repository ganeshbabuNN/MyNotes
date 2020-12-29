package com.ganesh.bankapp.dao;

import com.ganesh.bankapp.hibernate.account.HibernateAccountDAO;

public class DAOFactory {
	static AccountDAO adao=null;
	static{
		adao = new HibernateAccountDAO();
	}
	public static AccountDAO getAccountDAO(){
		return adao;
	}

}
