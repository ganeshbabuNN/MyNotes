package com.ganesh.struts2;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {
		private String name;
		private int age;
		private double fee;
		private Date dob;
		private String email;
		private String web;
		
		public String execute() throws Exception {
			System.out.println(name);
			System.out.println(age);
			System.out.println(fee);
			System.out.println(dob);
			System.out.println(email);
			System.out.println(web);
		return "success";
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public int getAge() {
			return age;
		}

		public void setAge(int age) {
			this.age = age;
		}

		public double getFee() {
			return fee;
		}

		public void setFee(double fee) {
			this.fee = fee;
		}

		public Date getDob() {
			return dob;
		}

		public void setDob(Date dob) {
			this.dob = dob;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getWeb() {
			return web;
		}

		public void setWeb(String web) {
			this.web = web;
		}
		
}
