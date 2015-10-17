package com.ganesh.ejb;

import javax.ejb.CreateException;
import javax.ejb.EJBHome;

public interface AccountHome extends EJBHome{
	public AccountRemote create() throws CreateException,java.rmi.RemoteException;
}
