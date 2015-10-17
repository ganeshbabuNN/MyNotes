package com.ganesh.accounts;

public class InvalidAccountNumberException extends Exception {
	int accno;
	InvalidAccountNumberException() {}
	InvalidAccountNumberException(int accno) {
		this.accno= accno;
	}
	public String toString() {
		return "Accno: "+ accno+ "is Not Found";
	}
	
}
