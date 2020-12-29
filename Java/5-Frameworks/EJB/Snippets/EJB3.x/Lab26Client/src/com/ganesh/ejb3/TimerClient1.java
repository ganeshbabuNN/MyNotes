package com.ganesh.ejb3;

public class TimerClient1 {
	public static void main(String[] args) {
		try{
			Object obj =ServiceLocator.getBusinessObject("TimerBean/remote");
			TimerRemote tr=(TimerRemote)obj;
			tr.setTimer(3000, 3000, "E3Timer");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
