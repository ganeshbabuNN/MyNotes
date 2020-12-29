package com.ganesh.hibernate;

public class User {
	private int userId;
	private String fullName;
	private String email;
	private long phone;
	private String username;
	private String password;
	private Account account;
	public User() {}
	public User(String fullName, String email, long phone, String username,
			String password, Account account) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
		this.username = username;
		this.password = password;
		this.account = account;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	

}
