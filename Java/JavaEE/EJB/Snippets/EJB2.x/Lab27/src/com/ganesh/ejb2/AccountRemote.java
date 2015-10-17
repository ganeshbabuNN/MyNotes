package com.ganesh.ejb2;

import java.rmi.RemoteException;

import javax.ejb.EJBObject;

import com.ganesh.to.AccountTO;

public interface AccountRemote extends EJBObject{
	public void addAccount(AccountTO ato) throws RemoteException;
	public double getBalance(int accno) throws RemoteException;
	public void deposit(int accno,double amt) throws RemoteException;
	public void withdraw(int accno,double amt) throws RemoteException;
}
