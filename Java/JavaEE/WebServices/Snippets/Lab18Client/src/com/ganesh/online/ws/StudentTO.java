package com.ganesh.online.ws;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="Student")
public class StudentTO {
	private int sid;
	private String sname;
	private String email;
	private long phone;
	public StudentTO() {
		// TODO Auto-generated constructor stub
	}
	
	public StudentTO(int sid, String sname, String email, long phone) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.email = email;
		this.phone = phone;
	}

	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
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
	@Override
	public String toString() {
		return "StudentTO [sid=" + sid + ", sname=" + sname + ", email="
				+ email + ", phone=" + phone + "]";
	}
}
