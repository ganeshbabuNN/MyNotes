package com.ganesh.hibernate;

public class Account {
	private int aid;
	private String accType;
	private double balance;
	private User user;
	public Account() {}
	
	public Account(String accType, double balance, User user) {
		this.accType = accType;
		this.balance = balance;
		this.user = user;
	}

	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAccType() {
		return accType;
	}
	public void setAccType(String accType) {
		this.accType = accType;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	

}
