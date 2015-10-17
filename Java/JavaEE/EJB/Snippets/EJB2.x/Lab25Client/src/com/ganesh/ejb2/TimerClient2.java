package com.ganesh.ejb2;

public class TimerClient2 {
	public static void main(String[] args) {
		try{
			Object obj =ServiceLocator.getHome("TimerHomeJNDI");
			TimerHome home=(TimerHome)obj;
			TimerRemote tr = home.create();
			tr.cancelTimer("E2Timer");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
