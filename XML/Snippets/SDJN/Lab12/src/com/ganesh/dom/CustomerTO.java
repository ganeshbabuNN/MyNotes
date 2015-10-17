package com.ganesh.dom;

public class CustomerTO {
	private String cid;
	private String cname;
	private String email;
	private String phone;
	private String city;
	private String status;
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String toString() {
		return "CustomerTO [cid=" + cid + ", cname=" + cname + ", email="
				+ email + ", phone=" + phone + ", city=" + city + ", status="
				+ status + "]";
	}
}
