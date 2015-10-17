package com.ganesh.bankapp.service;

import com.ganesh.bankapp.dao.AccountDAO;
import com.ganesh.bankapp.dao.DAOFactory;

@javax.jws.WebService(targetNamespace = "http://service.bankapp.ganesh.com/", serviceName = "MyAccountService", portName = "AccountServicePort", wsdlLocation = "WEB-INF/wsdl/MyAccountService.wsdl")
public class AccountServiceDelegate {

	com.ganesh.bankapp.service.AccountService accountService = new com.ganesh.bankapp.service.AccountService();

	public void deposit(int accno, double amt) {
		accountService.deposit(accno, amt);
	}

}