package com.ganesh.bookstore.ejb2;

import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.ejb.EJBHome;

public interface CartHome extends EJBHome{
	public CartRemote create() throws CreateException,RemoteException;
	public CartRemote create(String cid) throws CreateException,RemoteException;

}
