package com.ganesh.spring3;


public class Fee {
	double totalFee;
	double feepaid;
	double feeBal;
	public Fee(double totalFee, double feepaid, double feeBal) {
		this.totalFee = totalFee;
		this.feepaid = feepaid;
		this.feeBal = feeBal;
	}
	public double getTotalFee() {
		return totalFee;
	}
	public void setTotalFee(double totalFee) {
		this.totalFee = totalFee;
	}
	public double getFeepaid() {
		return feepaid;
	}
	public void setFeepaid(double feepaid) {
		this.feepaid = feepaid;
	}
	public double getFeeBal() {
		return feeBal;
	}
	public void setFeeBal(double feeBal) {
		this.feeBal = feeBal;
	}
	
}
