package com.ganesh.ejb3;

public class TimerClient2 {
	public static void main(String[] args) {
		try{
			Object obj =ServiceLocator.getBusinessObject("TimerBean/remote");
			TimerRemote tr=(TimerRemote)obj;
			tr.cancelTimer("E3Timer");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
