package com.ganesh.accounts;

public class InsufficentFundsException extends Exception{
	InsufficentFundsException() { }
	public String toString() {
		return "Sufficent Funds are Not Available";
	}

}
