package com.ganesh.hibernate;

public class WeekendStudent extends CurrentStudent {
	private String wcompany;
	private String wcemail;
	private double wctc;
	public WeekendStudent() {}
	public WeekendStudent(String sname, String city, String status,
			double totalfee, double feebal, String timings, String branch,
			String wcompany, String wcemail, double wctc) {
		super(sname, city, status, totalfee, feebal, timings, branch);
		this.wcompany = wcompany;
		this.wcemail = wcemail;
		this.wctc = wctc;
	}
	public String getWcompany() {
		return wcompany;
	}
	public void setWcompany(String wcompany) {
		this.wcompany = wcompany;
	}
	public String getWcemail() {
		return wcemail;
	}
	public void setWcemail(String wcemail) {
		this.wcemail = wcemail;
	}
	public double getWctc() {
		return wctc;
	}
	public void setWctc(double wctc) {
		this.wctc = wctc;
	}
	@Override
	public String toString() {
		return "WeekendStudent [wcompany=" + wcompany + ", wcemail=" + wcemail
				+ ", wctc=" + wctc + "]";
	}
}