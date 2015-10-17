package com.ganesh.hibernate;

public class Customer {
	private int cid;
	private String cname;
	private String email;
	private String city;
	private double cardBal;
	private String cardType;
	private int cardNo;
	private String status;
	public Customer() {
		// TODO Auto-generated constructor stub
	}
	public Customer(String cname, String email, String city, double cardBal,
			String cardType, int cardNo, String status) {
		super();
		this.cname = cname;
		this.email = email;
		this.city = city;
		this.cardBal = cardBal;
		this.cardType = cardType;
		this.cardNo = cardNo;
		this.status = status;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public double getCardBal() {
		return cardBal;
	}
	public void setCardBal(double cardBal) {
		this.cardBal = cardBal;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public int getCardNo() {
		return cardNo;
	}
	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Customer [cid=" + cid + ", cname=" + cname + ", email=" + email
				+ ", city=" + city + ", cardBal=" + cardBal + ", cardType="
				+ cardType + ", cardNo=" + cardNo + ", status=" + status + "]";
	}
	
	
		
}
