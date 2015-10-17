package com.ganesh.ejb2;

import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.ejb.EJBHome;

public interface AccountHome extends EJBHome{
	public AccountRemote create() throws CreateException,RemoteException;

}
