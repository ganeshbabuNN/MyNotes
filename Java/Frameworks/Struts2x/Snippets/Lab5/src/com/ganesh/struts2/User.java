package com.ganesh.struts2;

public class User {
	private String email;
	private String sname;
	public String getEmail() {
		System.out.println("User-getEmail()");
		return email;
	}
	public void setEmail(String email) {
		System.out.println("User-setEmail()");
		this.email = email;
	}
	public String getSname() {
		System.out.println("User-getSname()");
		return sname;
	}
	public void setSname(String sname) {
		System.out.println("User-setSname()");
		this.sname = sname;
	}
	
	

}
