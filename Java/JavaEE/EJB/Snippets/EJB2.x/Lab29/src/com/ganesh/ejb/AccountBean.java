package com.ganesh.ejb;

import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.ejb.EJBException;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;

import com.ganesh.dao.DAOFactory;
import com.ganesh.exception.InsufficientFundException;
import com.ganesh.exception.InvalidAccountException;
import com.ganesh.to.AccountTO;

public class AccountBean implements SessionBean {
	SessionContext mySessionCtx;
	public SessionContext getSessionContext(){
		System.out.println("Account Bean--> getSessionContext");
		return mySessionCtx;
	}
		
	public void setSessionContext(SessionContext ctx) throws EJBException,
	RemoteException {
		System.out.println("Account Bean--> setSessionContext");
		mySessionCtx=ctx;		
	}
	public void ejbCreate() throws CreateException{
		System.out.println("Account Bean--> ejbCreate");
	}
	
	public void ejbActivate() throws EJBException, RemoteException {
		System.out.println("Account Bean--> ejbActivate");		
	}

	public void ejbPassivate() throws EJBException, RemoteException {
		System.out.println("Account Bean--> ejbPassivate");		
	}

	public void ejbRemove() throws EJBException, RemoteException {
		System.out.println("Account Bean--> ejbRemove");	
		
	}
	
	public AccountTO getAccountInfo(int uid){
		System.out.println("Account Bean--> getAccountTO");
		return DAOFactory.getAccountDAO().getAccountinfo(uid);
	}
	
	public boolean Transfer(int sourceAid, int destAid, double amount)
			throws RemoteException, InvalidAccountException,
			InsufficientFundException{
		System.out.println("Account Bean--> transfer");
		return DAOFactory.getAccountDAO().transfer(sourceAid, destAid, amount);		
	}	
}
