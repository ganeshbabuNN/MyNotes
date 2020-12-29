package com.ganesh.jsf;

public class StudentBean {
	private String name;
	private String batchId;
	private String email;
	private String phone;
	private String branch;
	private int feesPaid;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBatchId() {
		return batchId;
	}
	public void setBatchId(String batchId) {
		this.batchId = batchId;
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
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public int getFeesPaid() {
		return feesPaid;
	}
	public void setFeesPaid(int feesPaid) {
		this.feesPaid = feesPaid;
	}
	public StudentBean(String name, String batchId, String email, String phone,
			String branch, int feesPaid) {
		super();
		this.name = name;
		this.batchId = batchId;
		this.email = email;
		this.phone = phone;
		this.branch = branch;
		this.feesPaid = feesPaid;
	}
	
	
}
