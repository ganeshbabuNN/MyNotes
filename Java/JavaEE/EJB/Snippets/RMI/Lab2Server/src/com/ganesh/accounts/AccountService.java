package com.ganesh.accounts;

import java.rmi.Remote;
import java.rmi.RemoteException;

public interface AccountService extends Remote{
	public double getBalance(int accno) throws RemoteException;
	public double deposit(int accno,double amt) throws RemoteException;
	public double withdraw(int accno,double amt) throws RemoteException;
}
