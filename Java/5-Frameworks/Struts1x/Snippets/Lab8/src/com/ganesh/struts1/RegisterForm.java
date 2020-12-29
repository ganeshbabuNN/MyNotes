package com.ganesh.struts1;


import org.apache.struts.validator.ValidatorForm;

public class RegisterForm extends ValidatorForm{
	private String sid;
	private String age;
	private String feepaid;
	private String feebal;
	
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getFeepaid() {
		return feepaid;
	}
	public void setFeepaid(String feepaid) {
		this.feepaid = feepaid;
	}
	public String getFeebal() {
		return feebal;
	}
	public void setFeebal(String feebal) {
		this.feebal = feebal;
	}
	
	
	
}
