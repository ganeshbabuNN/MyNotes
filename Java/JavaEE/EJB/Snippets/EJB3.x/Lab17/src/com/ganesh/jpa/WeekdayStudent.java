package com.ganesh.jpa;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="wdstudents1")
public class WeekdayStudent extends CurrentStudent {
	
	@Column(name="qualification")
	private String qualification;
	@Column(name="percentage")
	private String percentage;
	@Column(name="yop")
	private String yop;
	
	public WeekdayStudent() {
	}

	public WeekdayStudent(String sname, String city, String status,
			double totalfee, double feebal, String timings, String branch,
			String qualification, String percentage, String yop) {
		super(sname, city, status, totalfee, feebal, timings, branch);
		this.qualification = qualification;
		this.percentage = percentage;
		this.yop = yop;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public String getPercentage() {
		return percentage;
	}

	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}

	public String getyop() {
		return yop;
	}

	public void setyop(String yop) {
		this.yop = yop;
	}
	
	@Override
	public String toString() {
		return super.toString() +","+qualification+","+percentage+ ","+yop;
	}

}
