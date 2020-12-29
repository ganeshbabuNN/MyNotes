package com.ganesh.exception;

import java.rmi.RemoteException;

public class InvalidAccountException extends RemoteException{
	int aid;
	public InvalidAccountException(int aid) {
		this.aid=aid;		
	}
	public String toString() {
		return String.valueOf(aid);
	}
	

}
