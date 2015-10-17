package com.ganesh.jpa;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@DiscriminatorValue(value="WESTU")
public class WeekendStudent extends CurrentStudent{
	
	@Column(name="company")
	private String company;
	@Column(name="email")
	private String email;
	@Column(name="ctc")
	private String ctc;
	
	public WeekendStudent() {
	
	}

	public WeekendStudent(String sname, String city, String status,
			double totalfee, double feebal, String timings, String branch,
			String company, String email, String ctc) {
		super(sname, city, status, totalfee, feebal, timings, branch);
		this.company = company;
		this.email = email;
		this.ctc = ctc;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCtc() {
		return ctc;
	}

	public void setCtc(String ctc) {
		this.ctc = ctc;
	}
	
	@Override
	public String toString() {
		return super.toString()+ ","+ company+","+ email+","+ ctc;
	}
	
	

}
