package com.ganesh.jsf;

import java.util.Date;

public class StudentBean {
	 String bid;
	 String sid;
	 double amount;
	Date paymentDate;
	
	public String register(){
		System.out.println(bid);
		System.out.println(sid);
		System.out.println(amount);
		System.out.println(paymentDate);
		return "regstatus";
	}
	
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public Date getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}
}
