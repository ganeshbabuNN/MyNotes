package com.ganesh.hibernate;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue(value="CSTU")
public class CurrentStudent extends Student {
	@Column(name="feebal")
	private double feebal;
	@Column(name="timings")
	private String timings;
	@Column(name="branch")
	private String branch;
	public CurrentStudent() {}
	public CurrentStudent(String sname, String city, String status,
			double totalfee, double feebal, String timings, String branch) {
		super(sname, city, status, totalfee);
		this.feebal = feebal;
		this.timings = timings;
		this.branch = branch;
	}
	public double getFeebal() {
		return feebal;
	}
	public void setFeebal(double feebal) {
		this.feebal = feebal;
	}
	public String getTimings() {
		return timings;
	}
	public void setTimings(String timings) {
		this.timings = timings;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	@Override
	public String toString() {
		return "CurrentStudent [feebal=" + feebal + ", timings=" + timings
				+ ", branch=" + branch + "]";
	}
}
