package com.ganesh.ejb3;

import java.util.Collection;

import javax.annotation.Resource;
import javax.ejb.*;
import javax.ejb.Timer;

@Stateless(name = "TimerBean", mappedName = "TimerBean")
public class TimerBean implements TimerRemote{
	
	@Resource
	SessionContext sc = null;

	public void setTimer(long iduration, long eduration, String tname) {
		System.out.println("TimerBean-setTimer()");
		TimerService ts = sc.getTimerService();
		ts.createTimer(iduration, eduration, tname);
		System.out.println("Timer with the Name:" + tname
				+ "has Initialized successfully");
	}

	public void cancelTimer(String tname) {
		System.out.println("TimerBean-cancelTimer()");
		TimerService ts = sc.getTimerService();
		Collection<Timer> col = ts.getTimers();
		for (Timer timer : col) {
			String tn = timer.getInfo().toString();
			if (tn.equals(tname)) {
				timer.cancel();
			}
		}
		System.out.println("Timer with the Name: " + tname
				+ "has Canceled Successfully ");
	}

	@Timeout
	public void doMyWork(Timer timer) {
		System.out.println("TimerBean-doMyWork()");
		System.out.println("Yes Work is done: by " + timer.getInfo());
	}
}
