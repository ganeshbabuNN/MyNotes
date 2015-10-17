package com.ganesh.rmi;

import java.rmi.Remote;
import java.rmi.RemoteException;

public interface HelloService extends Remote {
	public String getMessage(String name) throws RemoteException;
}
