package com.ganesh.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;


@Entity
@Table(name="scustomers")
@PrimaryKeyJoinColumn(name="cid")
public class SilverCustomer extends Customer {
	@Column(name="city")
	private String city;
	@Column(name="rpoints")
	private Integer rpoints;
	@Column(name="oemail")
	private String oemail;
	
	public SilverCustomer() {
		// TODO Auto-generated constructor stub
	}
	
	public SilverCustomer(String cname, String email, long phone, String city,
			int rpoints, String oemail) {
		super(cname, email, phone);
		this.city = city;
		this.rpoints = rpoints;
		this.oemail = oemail;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getRpoints() {
		return rpoints;
	}

	public void setRpoints(int rpoints) {
		this.rpoints = rpoints;
	}

	public String getOemail() {
		return oemail;
	}

	public void setOemail(String oemail) {
		this.oemail = oemail;
	}
}
