package com.ganesh.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="accounts")
public class Account {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="accno")
	private int accno;
	@Column(name="atype")
	private String atype;
	@Column(name="bcode")
	private String bcode;
	@Column(name="bal")
	private double bal;
	public Account() {}
	public Account(int accno, String atype, String bcode, double bal) {
		this.accno = accno;
		this.atype = atype;
		this.bcode = bcode;
		this.bal = bal;
	}
	public Account(String atype, String bcode, double bal) {
		this.atype = atype;
		this.bcode = bcode;
		this.bal = bal;
	}
	public int getAccno() {
		return accno;
	}
	public void setAccno(int accno) {
		this.accno = accno;
	}
	public String getAtype() {
		return atype;
	}
	public void setAtype(String atype) {
		this.atype = atype;
	}
	public String getBcode() {
		return bcode;
	}
	public void setBcode(String bcode) {
		this.bcode = bcode;
	}
	public double getBal() {
		return bal;
	}
	public void setBal(double bal) {
		this.bal = bal;
	}
	

}
