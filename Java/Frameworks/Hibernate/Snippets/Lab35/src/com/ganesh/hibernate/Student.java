package com.ganesh.hibernate;

public class Student {
	private SID studentld;
	private String sname;
	private String email;
	private String phone;
	
	public Student() {
		// TODO Auto-generated constructor stub
	}

	public Student(SID studentld, String sname, String email, String phone) {
		super();
		this.studentld = studentld;
		this.sname = sname;
		this.email = email;
		this.phone = phone;
	}

	public SID getStudentld() {
		return studentld;
	}

	public void setStudentld(SID studentld) {
		this.studentld = studentld;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "Student [sname=" + sname + ", email=" + email + ", phone="
				+ phone + "]";
	}
	
	
}
