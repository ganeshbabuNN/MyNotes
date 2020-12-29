package com.ganesh.rmi;

import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class HelloServiceImpl extends UnicastRemoteObject implements
		HelloService {
	
	protected HelloServiceImpl() throws RemoteException {
		super();
	}

	public String getMessage(String name) throws RemoteException {
		String msg = "Hello!" + name + "Welcome to RMI";
		System.out.println(msg);
		return msg;
	}

}
