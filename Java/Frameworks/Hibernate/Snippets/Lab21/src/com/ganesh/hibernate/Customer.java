package com.ganesh.hibernate;

import java.sql.Timestamp;

public class Customer {
	private int cid;
	private String cname;
	private String email;
	private long phone;
	private Timestamp tstamp;
	public Customer(String cname, String email, long phone) {
		super();
		this.cname = cname;
		this.email = email;
		this.phone = phone;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public Timestamp getTstamp() {
		return tstamp;
	}
	public void setTstamp(Timestamp tstamp) {
		this.tstamp = tstamp;
	}
	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", cname=" + cname + ", email=" + email
				+ ", phone=" + phone + ", tstamp=" + tstamp + "]";
	}
}