package com.ganesh.ejb2;

import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.ejb.EJBHome;

public interface TimerHome extends EJBHome{
	public TimerRemote create() throws CreateException,RemoteException;
}
