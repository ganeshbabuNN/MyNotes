package com.ganesh.ejb2.hello;

import java.rmi.RemoteException;

import javax.ejb.EJBObject;

public interface HelloRemote extends EJBObject {
	public String getMessage(String name) throws RemoteException;

}
