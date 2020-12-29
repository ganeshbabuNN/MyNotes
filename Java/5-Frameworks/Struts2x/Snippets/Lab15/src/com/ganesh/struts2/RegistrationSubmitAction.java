package com.ganesh.struts2;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class RegistrationSubmitAction extends ActionSupport{
	private String bid;
	private String sname;
	private String email;
	private String gender;
	private String qualification;
	private List<String> paymentOption = new ArrayList<String>();
	@Override
	public String execute() throws Exception {
		System.out.println(bid);
		System.out.println(sname);
		System.out.println(email);
		System.out.println(gender);
		System.out.println(qualification);
		System.out.println(paymentOption);
		return "success";
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public List<String> getPaymentOption() {
		return paymentOption;
	}
	public void setPaymentOption(List<String> paymentOption) {
		this.paymentOption = paymentOption;
	}
}
