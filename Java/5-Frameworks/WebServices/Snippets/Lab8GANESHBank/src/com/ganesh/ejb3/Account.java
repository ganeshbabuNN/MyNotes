package com.ganesh.ejb3;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="accounts")
public class Account {
	@Id
	@Column(name="accno")
	int accno;
	@Column(name="bal")
	double bal;
	@Column(name="atype")
	String atype;
	public Account() {}
	public Account(int accno, double bal, String atype) {
		super();
		this.accno = accno;
		this.bal = bal;
		this.atype = atype;
	}
	public int getAccno() {
		return accno;
	}
	public void setAccno(int accno) {
		this.accno = accno;
	}
	public double getBal() {
		return bal;
	}
	public void setBal(double bal) {
		this.bal = bal;
	}
	public String getAtype() {
		return atype;
	}
	public void setAtype(String atype) {
		this.atype = atype;
	}
	

}
