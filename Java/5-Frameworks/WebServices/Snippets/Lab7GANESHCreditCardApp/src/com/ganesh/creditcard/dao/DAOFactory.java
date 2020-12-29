package com.ganesh.creditcard.dao;

public class DAOFactory {
	static CreditCardDAO ccdao = null;
	static{
		ccdao = new HibernateCreditCardDAO();
	}
	public static CreditCardDAO getCreditCardDAO(){
		return ccdao;
	}
}
