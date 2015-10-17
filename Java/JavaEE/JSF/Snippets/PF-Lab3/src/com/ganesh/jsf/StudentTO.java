package com.ganesh.jsf;

public class StudentTO {
	private String sid;
	private String name;
	private String email;
	private long phone;
	
	public StudentTO(String sid, String name, String email, long phone) {
		this.sid = sid;
		this.name = name;
		this.email = email;
		this.phone = phone;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
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
