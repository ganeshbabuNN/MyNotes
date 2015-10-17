package com.ganesh.ejb;

import java.rmi.RemoteException;

import javax.ejb.EJBObject;

import com.ganesh.exception.InsufficientFundException;
import com.ganesh.exception.InvalidAccountException;
import com.ganesh.to.AccountTO;

public interface AccountRemote extends EJBObject {
	AccountTO getAccountInfo(int uid) throws RemoteException;
	public boolean Transfer(int sourceAid, int destAid, double amount)
			throws RemoteException, InvalidAccountException,
			InsufficientFundException;

}
