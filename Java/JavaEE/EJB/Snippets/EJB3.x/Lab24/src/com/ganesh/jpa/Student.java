package com.ganesh.jpa;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="students")
public class Student {
	@Id
	@Embedded
	@AttributeOverrides({
		@AttributeOverride(name="bid" ,column=@Column(name="bid")),
		@AttributeOverride(name="sid",column=@Column(name="sid"))
	})
	private SID studentId;
	
	@Column(name="sname")
	private String sname;
	@Column(name="email")
	private String email;
	@Column(name="phone")
	private String phone;	
	
	public Student() {
	}
	public Student(SID studentId, String sname, String email, String phone) {
		super();
		this.studentId = studentId;
		this.sname = sname;
		this.email = email;
		this.phone = phone;
	}


	public SID getStudentId() {
		return studentId;
	}


	public void setStudentId(SID studentId) {
		this.studentId = studentId;
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
		return super.toString()+"\t"+sname+"\t"+email+"\t"+phone;
	}
}
