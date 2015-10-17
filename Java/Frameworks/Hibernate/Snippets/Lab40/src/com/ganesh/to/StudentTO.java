package com.ganesh.to;

public class StudentTO {
	private int sid;
	private String bid;
	private String name;
	private String email;
	private long phone;
	public StudentTO() {}
	public StudentTO(int sid, String bid, String name, String email, long phone) {
		this.sid = sid;
		this.bid = bid;
		this.name = name;
		this.email = email;
		this.phone = phone;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
