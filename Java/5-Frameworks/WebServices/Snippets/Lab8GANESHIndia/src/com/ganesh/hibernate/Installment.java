package com.ganesh.hibernate;

public class Installment {
	private int instid;

	private String sid;
	private double amt;
	private String paymode;
	private int ccno;
	public Installment() {}
	public Installment(String sid, double amt, String paymode, int ccno) {
		this.sid = sid;
		this.amt = amt;
		this.paymode = paymode;
		this.ccno = ccno;
	}
	public int getInstid() {
		return instid;
	}
	public void setInstid(int instid) {
		this.instid = instid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public double getAmt() {
		return amt;
	}
	public void setAmt(double amt) {
		this.amt = amt;
	}
	public String getPaymode() {
		return paymode;
	}
	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}
	public int getCcno() {
		return ccno;
	}
	public void setCcno(int ccno) {
		this.ccno = ccno;
	}
	
}
