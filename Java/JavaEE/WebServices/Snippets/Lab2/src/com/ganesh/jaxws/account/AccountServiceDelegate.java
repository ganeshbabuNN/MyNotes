package com.ganesh.jaxws.account;

@javax.jws.WebService(targetNamespace = "http://account.jaxws.ganesh.com/", serviceName = "AccountServiceService", portName = "AccountServicePort", wsdlLocation = "WEB-INF/wsdl/AccountServiceService.wsdl")
public class AccountServiceDelegate {

	com.ganesh.jaxws.account.AccountService accountService = new com.ganesh.jaxws.account.AccountService();

	public double getBal(int accno) {
		return accountService.getBal(accno);
	}

	public void deposit(int accno, double amt) {
		accountService.deposit(accno, amt);
	}

	public void withdrawa(int accno, double amt) {
		accountService.withdrawa(accno, amt);
	}

}