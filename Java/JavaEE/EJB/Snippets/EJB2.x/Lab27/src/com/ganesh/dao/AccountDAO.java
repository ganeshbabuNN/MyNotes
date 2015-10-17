package com.ganesh.dao;

import java.rmi.RemoteException;

import com.ganesh.to.AccountTO;

public interface AccountDAO {
	public void addAccount(AccountTO ato) ;
	public double getBalance(int accno) ;
	public void deposit(int accno,double amt) ;
	public void withdraw(int accno,double amt);

}
