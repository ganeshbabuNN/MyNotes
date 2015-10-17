package com.ganesh.hibernate;

import java.util.Date;

public class CreditCard {
	private int ccid;
	private int ccno;
	private String ctype;
	private int code;
	private Date expDate;
	private Customer customer;
	public CreditCard() {
		// TODO Auto-generated constructor stub
	}
	public CreditCard(int ccno, String ctype, int code, Date expDate) {
		super();
		this.ccno = ccno;
		this.ctype = ctype;
		this.code = code;
		this.expDate = expDate;
	}
	public int getCcid() {
		return ccid;
	}
	public void setCcid(int ccid) {
		this.ccid = ccid;
	}
	public int getCcno() {
		return ccno;
	}
	public void setCcno(int ccno) {
		this.ccno = ccno;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public Date getExpDate() {
		return expDate;
	}
	public void setExpDate(Date expDate) {
		this.expDate = expDate;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
}