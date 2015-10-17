package com.ganesh.ejb;

import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.ejb.EJBException;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;

import com.ganesh.dao.DAOFactory;
import com.ganesh.to.UserTO;

public class UserBean implements SessionBean{
	SessionContext mySessionCtx;
	public SessionContext getSessionContext(){
		System.out.println("UserBean--> getSessionContext");
		return mySessionCtx;
	}
		
	public void setSessionContext(SessionContext ctx) throws EJBException,
	RemoteException {
		System.out.println("UserBean--> setSessionContext");
		mySessionCtx=ctx;		
	}
	
	public void ejbCreate() throws CreateException{
		System.out.println("UserBean--> ejbCreate");
	}
	public void ejbActivate() throws EJBException, RemoteException {
		System.out.println("UserBean--> ejbActivate");
		
	}

	public void ejbPassivate() throws EJBException, RemoteException {
		System.out.println("UserBean--> ejbPassivate");
		
	}

	public void ejbRemove() throws EJBException, RemoteException {
		System.out.println("UserBean--> ejbRemove");
		
	}
	
	public UserTO verifyUser(String username,String password){
		System.out.println("UserBean->verifyUser");
		return DAOFactory.getUserDAO().verifyUser(username, password);
	}
	
	public boolean changePassword(int uid,String npwd) {
		System.out.println("UserBean->changePassword");
		return DAOFactory.getUserDAO().changePassword(uid, npwd);
	}
	
	public boolean updateInfo(int uuid,String email,long phone){
		System.out.println("UserBean->updateInfo");
		return DAOFactory.getUserDAO().updateInfo(uuid, email, phone);
	}
	
}
