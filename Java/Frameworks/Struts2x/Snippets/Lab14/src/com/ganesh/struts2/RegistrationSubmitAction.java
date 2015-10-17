package com.ganesh.struts2;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class RegistrationSubmitAction extends ActionSupport{
	private String code;
	private String bid;
	private String sid;
	private String sname;
	private String email;
	private String gender;
	private Date dob;
	private String qualification;
	private String courses;
	private List<String> paymentOption = new ArrayList<String>();
	private String aboutus;
	private String comments;
	private boolean termsAcceptance;
	private String token;
	@Override
	public String execute() throws Exception {
	  System.out.println(bid);
	  System.out.println(sid);
	  System.out.println(sname);
	  System.out.println(email);
	  System.out.println(gender);
	  System.out.println(dob);
	  System.out.println(qualification);
	  System.out.println(courses);
	  System.out.println(paymentOption);
	  System.out.println(aboutus);
	  System.out.println(termsAcceptance);
	  System.out.println(token);
	  System.out.println(code);
		return "success";
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
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
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getCourses() {
		return courses;
	}
	public void setCourses(String courses) {
		this.courses = courses;
	}
	public List<String> getPaymentOption() {
		return paymentOption;
	}
	public void setPaymentOption(List<String> paymentOption) {
		this.paymentOption = paymentOption;
	}
	public String getAboutus() {
		return aboutus;
	}
	public void setAboutus(String aboutus) {
		this.aboutus = aboutus;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public boolean isTermsAcceptance() {
		return termsAcceptance;
	}
	public void setTermsAcceptance(boolean termsAcceptance) {
		this.termsAcceptance = termsAcceptance;
	}
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	
	}
