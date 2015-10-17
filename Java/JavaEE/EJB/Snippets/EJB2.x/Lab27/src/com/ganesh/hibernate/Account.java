package com.ganesh.hibernate;

public class Account {
	private int accno;
	private String aType;
	private String bcode;
	private double bal;
	public Account() {}
	public Account(String aType, String bcode, double bal) {
		this.aType = aType;
		this.bcode = bcode;
		this.bal = bal;
	}
	public Account(int accno, String aType, String bcode, double bal) {
		super();
		this.accno = accno;
		this.aType = aType;
		this.bcode = bcode;
		this.bal = bal;
	}
	public int getAccno() {
		return accno;
	}
	public void setAccno(int accno) {
		this.accno = accno;
	}
	public String getaType() {
		return aType;
	}
	public void setaType(String aType) {
		this.aType = aType;
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
