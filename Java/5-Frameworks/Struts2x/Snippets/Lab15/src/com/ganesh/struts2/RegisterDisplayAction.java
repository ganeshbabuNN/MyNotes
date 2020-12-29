package com.ganesh.struts2;


import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterDisplayAction extends ActionSupport{
	String sname;
	String email;
	List<String> batches;
	List<String> gender;
	List<String> paytypes;
	List<String> qualis;
	
	public RegisterDisplayAction() {
		sname = "Srinivas";
		email = "sri@jlc.com";
		batches = new ArrayList<String>();
		batches.add("B51");
		batches.add("B52");
		batches.add("B53");
		batches.add("b54");
		batches.add("B55");
		batches.add("B56");
		
		gender = new ArrayList<String>();
		gender.add("Male");
		gender.add("Female");
		
		paytypes = new ArrayList<String>();
		paytypes.add("Cash");
		paytypes.add("Card");
		paytypes.add("Cheque");
		paytypes.add("Online Transfer");
		
		qualis = new ArrayList<String>();
		qualis.add("M.Sc");
		qualis.add("B.Sc");
		qualis.add("M.C.A");
		qualis.add("M.Tech");
		qualis.add("B.Tech");
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

	public List<String> getBatches() {
		return batches;
	}

	public void setBatches(List<String> batches) {
		this.batches = batches;
	}

	public List<String> getGender() {
		return gender;
	}

	public void setGender(List<String> gender) {
		this.gender = gender;
	}

	public List<String> getPaytypes() {
		return paytypes;
	}

	public void setPaytypes(List<String> paytypes) {
		this.paytypes = paytypes;
	}

	public List<String> getQualis() {
		return qualis;
	}

	public void setQualis(List<String> qualis) {
		this.qualis = qualis;
	}
}