package com.ganesh.ejb2;

import java.rmi.RemoteException;
import java.util.Collection;
import java.util.Iterator;

import javax.ejb.EJBException;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;
import javax.ejb.TimedObject;
import javax.ejb.Timer;
import javax.ejb.TimerService;

public class TimerBean implements SessionBean, TimedObject {
	SessionContext sc = null;
	public void setSessionContext(SessionContext sc) throws EJBException,
			RemoteException {
		System.out.println("TimerBean-setSessionContext()");
		this.sc=sc;
	}
	public void ejbCreate() {
		System.out.println("TimerBean-ejbCreate()");
	}
	
	public void ejbRemove() throws EJBException, RemoteException {
		System.out.println("TimerBean-ejbRemove()");

	}
	public void ejbPassivate() throws EJBException, RemoteException {
		System.out.println("TimerBean-ejbPassivate()");
	}
	
	public void ejbActivate() throws EJBException, RemoteException {
		System.out.println("TimerBean-ejbRemove()");
	}
	public void setTimer(long iduration,long eduration,String tname) throws RemoteException{
		System.out.println("TimerBean-setTimer()");
		TimerService ts = sc.getTimerService();
		ts.createTimer(iduration, eduration,tname);
		System.out.println("Timer with the Name: "+tname+"Has Intialized Successfully");
	}
	public void cancelTimer(String tname) throws RemoteException {
		System.out.println("TimerBean-cancelTimer()");
		TimerService ts = sc.getTimerService();
		Collection col=ts.getTimers();
		Iterator it = col.iterator();
		while(it.hasNext()){
			Timer timer=(Timer)it.next();
			String tn=timer.getInfo().toString();
			if(tn.equals(tname)){
				timer.cancel();
			}
		}		
		System.out.println("Timer with the Name: "+ tname+"has Cancelled Successuly");		
	}
	public void ejbTimeout(Timer timer) {		
		System.out.println("TimerBean-ejbTimeout()");
		System.out.println("Yes Work is done: by " + timer.getInfo());
	}
}
