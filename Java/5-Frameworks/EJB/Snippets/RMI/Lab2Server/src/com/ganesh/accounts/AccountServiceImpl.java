package com.ganesh.accounts;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class AccountServiceImpl extends UnicastRemoteObject implements AccountService{
	AccountDAO accountDAO;
	protected AccountServiceImpl() throws RemoteException{
		super();
		accountDAO = DAOFactory.getAccountDAO();
	}
	public double getBalance(int accno) throws RemoteException {
		return accountDAO.getBalance(accno);
	}
	public double deposit(int accno, double amt) throws RemoteException {
		return accountDAO.deposit(accno, amt);
	}
	public double withdraw(int accno, double amt) throws RemoteException {
		return accountDAO.withdraw(accno, amt);
	}
	
	

}
