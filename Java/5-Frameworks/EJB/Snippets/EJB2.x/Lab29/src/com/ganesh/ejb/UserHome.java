package com.ganesh.ejb;

import javax.ejb.CreateException;
import javax.ejb.EJBHome;

public interface UserHome extends EJBHome {
	public UserRemote create() throws CreateException,java.rmi.RemoteException;
	
}
