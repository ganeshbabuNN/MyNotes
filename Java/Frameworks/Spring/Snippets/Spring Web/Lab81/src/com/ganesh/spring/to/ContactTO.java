package com.ganesh.spring.to;



public class ContactTO {
	private int cid;
	private String fname;
	private String lname;
	private String email;
	private long phone;
	public ContactTO() {
		// TODO Auto-generated constructor stub
	}
	public ContactTO(int cid, String fname, String lname, String email,
			long phone) {
		super();
		this.cid = cid;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.phone = phone;
	}
	public ContactTO(String fname, String lname, String email, long phone) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.phone = phone;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
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
	
	
	
}
