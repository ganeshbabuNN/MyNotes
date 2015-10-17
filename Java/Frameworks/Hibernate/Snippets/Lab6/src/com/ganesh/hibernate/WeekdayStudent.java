package com.ganesh.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="wdstudents")
@PrimaryKeyJoinColumn(name="sid")
public class WeekdayStudent extends CurrentStudent {
	@Column(name="quali")
	private String qualification;
	@Column(name="yoe")
	private int yoe;
	@Column(name="percentage")
	private String percentage;
	public WeekdayStudent() {}
	public WeekdayStudent(String sname, String city, String status,
			double totalfee, double feebal, String timings, String branch,
			String qualification, int yoe, String percentage) {
		super(sname, city, status, totalfee, feebal, timings, branch);
		this.qualification = qualification;
		this.yoe = yoe;
		this.percentage = percentage;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public int getYoe() {
		return yoe;
	}
	public void setYoe(int yoe) {
		this.yoe = yoe;
	}
	public String getPercentage() {
		return percentage;
	}
	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}
	@Override
	public String toString() {
		return "WeekdayStudent [qualification=" + qualification + ", yoe="
				+ yoe + ", percentage=" + percentage + "]";
	}
}