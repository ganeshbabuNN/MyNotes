package com.ganesh.hibernate;

import javax.persistence.*;

@Entity
@Table(name="students")
public class Student {
	@Id
	@Embedded
	@AttributeOverrides({
		@AttributeOverride(name="bid",column=@Column(name="bid")),
		@AttributeOverride(name="sid",column=@Column(name="sid"))
	})
	private SID studentld;
	@Column(name="sname")
	private String sname;
	@Column(name="email")
	private String email;
	@Column(name="phone")
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
