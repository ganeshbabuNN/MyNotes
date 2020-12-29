package com.ganesh.hibernate;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue(value="OSTU")
public class OldStudent extends Student {
	@Column(name="ocompany")
	private String ocompany;
	@Column(name="ocemail")
	private String ocemail;
	@Column(name="octc")
	private double octc;
	public OldStudent() {}
	public OldStudent(String sname, String city, String status,
			double totalfee, String ocompany, String ocemail, double octc) {
		super(sname, city, status, totalfee);
		this.ocompany = ocompany;
		this.ocemail = ocemail;
		this.octc = octc;
	}
	public String getOcompany() {
		return ocompany;
	}
	public void setOcompany(String ocompany) {
		this.ocompany = ocompany;
	}
	public String getOcemail() {
		return ocemail;
	}
	public void setOcemail(String ocemail) {
		this.ocemail = ocemail;
	}
	public double getOctc() {
		return octc;
	}
	public void setOctc(double octc) {
		this.octc = octc;
	}
	@Override
	public String toString() {
		return "OldStudent [ocompany=" + ocompany + ", ocemail=" + ocemail
				+ ", octc=" + octc + "]";
	}
}