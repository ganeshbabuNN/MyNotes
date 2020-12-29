package com.ganesh.ejb2;

import java.rmi.RemoteException;

import javax.ejb.EJBObject;

public interface TimerRemote extends EJBObject{
	public void setTimer(long iduration,long eduration,String tname) throws RemoteException;
	public void cancelTimer(String tname) throws RemoteException;
}
