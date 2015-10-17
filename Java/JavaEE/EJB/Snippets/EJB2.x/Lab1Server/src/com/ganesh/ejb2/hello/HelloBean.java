package com.ganesh.ejb2.hello;

import java.rmi.RemoteException;

import javax.ejb.EJBException;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;

public class HelloBean implements SessionBean {
	SessionContext ctx ;
	public void setSessionContext(SessionContext ctx) throws EJBException,
	RemoteException {
			System.out.println("setSessionContext()");
			this.ctx = ctx;
	}	
	public void ejbCreate() {
		System.out.println("ejbCreate()");
	}
	public void ejbActivate() throws EJBException, RemoteException {
		System.out.println("ejbActivate()");
	}
	public void ejbPassivate() throws EJBException, RemoteException {
		System.out.println("ejbPassivate()");		
	}
	public void ejbRemove() throws EJBException, RemoteException {
		System.out.println("ejbPassivate()");		
	}
	public String getMessage(String name){
		System.out.println("in getMessages()");
		String msg = "Hello" + name  + "Welcome to EJB-WL8";
		System.out.println(msg);
		return msg;
	}
}
