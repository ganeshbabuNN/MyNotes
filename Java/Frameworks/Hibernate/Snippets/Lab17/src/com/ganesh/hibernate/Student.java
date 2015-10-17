package com.ganesh.hibernate;

import java.util.Set;

public class Student {
	private Integer sid;
	private String sname;
	private String email;
	private long phone;
	private Set<Course> Courses;
	public Student() {
		// TODO Auto-generated constructor stub
	}
	public Student(String sname, String email, long phone) {
		super();
		this.sname = sname;
		this.email = email;
		this.phone = phone;
	}
	
	public Integer getSid() {
		return sid;
	}
	public void setSid(Integer sid) {
		this.sid = sid;
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
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone = phone;
	}
	public Set<Course> getCourses() {
		return Courses;
	}
	public void setCourses(Set<Course> courses) {
		Courses = courses;
	}
	@Override
	public String toString() {
		return "Student [sid=" + sid + ", sname=" + sname + ", email=" + email
				+ ", phone=" + phone + "]";
	}
	
}
