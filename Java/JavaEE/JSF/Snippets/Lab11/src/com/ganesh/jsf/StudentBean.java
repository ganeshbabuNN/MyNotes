package com.ganesh.jsf;

import java.util.Date;

import javax.faces.event.ActionEvent;
import javax.faces.event.ValueChangeEvent;

public class StudentBean {
	private boolean showMyGrid1 =true;
	private boolean showMyGrid2=false;
	private boolean showMyGrid3=false;
	private String bid;
	private String sid;
	private String sname;
	private String email;
	private String phone;
	
	public String registerNow(){
		System.out.println(bid);
		System.out.println(sid);
		System.out.println(sname);
		System.out.println(email);
		System.out.println(phone);
		return "regstatus";
	}
	
	public void registerPart1(ActionEvent ae){
		System.out.println("-----registerPart1-----");
		showMyGrid1=false;
		showMyGrid2=true;
	}
	
	public void registerPart2(ValueChangeEvent vce){
		System.out.println("-----registerPart2-----");
		bid=vce.getNewValue().toString();
		showMyGrid2=false;
		showMyGrid3=true;
	}

	public boolean isShowMyGrid1() {
		return showMyGrid1;
	}

	public void setShowMyGrid1(boolean showMyGrid1) {
		this.showMyGrid1 = showMyGrid1;
	}

	public boolean isShowMyGrid2() {
		return showMyGrid2;
	}

	public void setShowMyGrid2(boolean showMyGrid2) {
		this.showMyGrid2 = showMyGrid2;
	}

	public boolean isShowMyGrid3() {
		return showMyGrid3;
	}

	public void setShowMyGrid3(boolean showMyGrid3) {
		this.showMyGrid3 = showMyGrid3;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
