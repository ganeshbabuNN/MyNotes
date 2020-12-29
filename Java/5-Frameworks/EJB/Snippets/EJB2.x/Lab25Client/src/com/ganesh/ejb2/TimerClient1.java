package com.ganesh.ejb2;

public class TimerClient1 {
	public static void main(String[] args) {
		try{
			Object obj =ServiceLocator.getHome("TimerHomeJNDI");
			TimerHome home=(TimerHome)obj;
			TimerRemote tr =home.create();
			tr.setTimer(3000, 3000, "E2Timer");
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
