package com.ganesh.hibernate;

public class Customer {
	private String customerld;
	private String cid;
	private String cname;
	private String email;
	private long phone;
	public Customer() {
		// TODO Auto-generated constructor stub
	}
	public Customer(String cid, String cname, String email, long phone) {
		super();
		this.cid = cid;
		this.cname = cname;
		this.email = email;
		this.phone = phone;
	}
	public String getcustomerld() {
		return customerld;
	}
	public void setcustomerld(String customerld) {
		this.customerld = customerld;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
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
	@Override
	public String toString() {
		return "Customer [customerld=" + customerld + ", cid=" + cid
				+ ", cname=" + cname + ", email=" + email + ", phone=" + phone
				+ "]";
	}
	
	
}
