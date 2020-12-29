package com.ganesh.hibernate;

import java.util.Set;

public abstract class Customer {
	private int cid;
	private String cname;
	private String email;
	private long phone;
	private CreditCard ccard;
	private Set<Order> orders;
	public Customer() {
		// TODO Auto-generated constructor stub
	}
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
	public CreditCard getCcard() {
		return ccard;
	}
	public void setCcard(CreditCard ccard) {
		this.ccard = ccard;
	}
	public Set<Order> getOrders() {
		return orders;
	}
	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}
}
