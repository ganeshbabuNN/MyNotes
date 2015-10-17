package com.ganesh.to;

import java.io.Serializable;

public class AccountTO implements Serializable {
	private int accno;
	private String atype;
	private String bcode;
	private double bal;
	public AccountTO() {}
	public AccountTO(int accno, String atype, String bcode, double bal) {
		this.accno = accno;
		this.atype = atype;
		this.bcode = bcode;
		this.bal = bal;
	}
	public AccountTO(String atype, String bcode, double bal) {
		this.atype = atype;
		this.bcode = bcode;
		this.bal = bal;
	}
	public int getAccno() {
		return accno;
	}
	public void setAccno(int accno) {
		this.accno = accno;
	}
	public String getAtype() {
		return atype;
	}
	public void setAtype(String atype) {
		this.atype = atype;
	}
	public String getBcode() {
		return bcode;
	}
	public void setBcode(String bcode) {
		this.bcode = bcode;
	}
	public double getBal() {
		return bal;
	}
	public void setBal(double bal) {
		this.bal = bal;
	}
	
	

}
