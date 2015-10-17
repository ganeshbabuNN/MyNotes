package com.ganesh.ejb3;

import javax.ejb.Remote;

@Remote
public interface TimerRemote {
	public void setTimer(long iduration,long eduration,String tname);
	public void cancelTimer(String tname);
}
