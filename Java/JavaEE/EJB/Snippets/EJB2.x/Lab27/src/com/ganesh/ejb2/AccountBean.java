package com.ganesh.ejb2;

import java.rmi.RemoteException;

import javax.ejb.EJBException;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;

import com.ganesh.dao.AccountDAO;
import com.ganesh.dao.DAOFactory;
import com.ganesh.to.AccountTO;

public class AccountBean implements SessionBean {
	SessionContext sc = null;
	AccountDAO adao = null;

	public void setSessionContext(SessionContext sc) throws EJBException,
			RemoteException {
		System.out.println("AccountBean-setSessionContext()");
	}
	public void ejbCreate(){
		System.out.println("AccountBean-ejbCreate()");
		adao=DAOFactory.getAccountDAO();
	}
	
	public void ejbRemove() {
		System.out.println("AccountBean-ejbRemove()");
	}
	public void ejbActivate()  {
		System.out.println("AccountBean-ejbActivate()");
	}

	public void ejbPassivate() {
		System.out.println("AccountBean-ejbPassivate()");
	}

	public void addAccount(AccountTO ato) {
		adao.addAccount(ato);
	}

	public double getBalance(int accno){
		return adao.getBalance(accno);
	}

	public void deposit(int accno, double amt) {
		adao.deposit(accno, amt);
	}

	public void withdraw(int accno, double amt){
		adao.withdraw(accno, amt);
	}

	

}
