package com.ganesh.bankapp.service;

import com.ganesh.bankapp.dao.AccountDAO;
import com.ganesh.bankapp.dao.DAOFactory;

public class AccountService {
	public void deposit(int accno,double amt){
		AccountDAO adao = DAOFactory.getAccountDAO();
		adao.deposit(accno, amt);
	}
}
