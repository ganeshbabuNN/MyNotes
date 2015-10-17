package com.ganesh.jpa;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customers")
public class Customer {
	@Id
	@Column(name="cid")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cid;
	@Column(name="cname")
	private String cname;
	@Column(name="email")
	private String email;
	@Column(name="phone")
	private String phone;
	@Column(name="city")
	private String city;
	public Customer() {
	}
	public Customer(String cname, String email, String phone, String city) {
		super();
		this.cname = cname;
		this.email = email;
		this.phone = phone;
		this.city = city;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public String toString() {
		return super.toString()+"\t"+cid+"\t"+cname+"\t"+email+"\t"+phone+"\t"+city;
	}
}
