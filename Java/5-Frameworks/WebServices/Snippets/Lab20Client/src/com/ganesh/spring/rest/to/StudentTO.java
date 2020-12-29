package com.ganesh.spring.rest.to;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="student")
public class StudentTO {
	int sid;
	String name;
	String email;
	long phone;
	public StudentTO() {
		// TODO Auto-generated constructor stub
	}
	public StudentTO(int sid, String name, String email, long phone) {
		this.sid = sid;
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
	@Override
	public String toString() {
		return "StudentTO [sid=" + sid + ", name=" + name + ", email=" + email
				+ ", phone=" + phone + "]";
	}
	
}
