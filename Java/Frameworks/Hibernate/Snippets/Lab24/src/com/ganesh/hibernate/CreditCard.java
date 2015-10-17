package com.ganesh.hibernate;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="ccards")
public class CreditCard {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="ccid")
	private Integer ccid;
	@Column(name="ccno")
	private Integer ccno;
	@Column(name="ctype")
	private String ctype;
	@Column(name="code")
	private Integer code;
	@Column(name="expDate")
	private Date expDate;
	@OneToOne
	@JoinColumn(name="ccid")
	private Customer customer;
	public CreditCard() {
		// TODO Auto-generated constructor stub
	}
	public CreditCard(Integer ccno, String ctype, Integer code, Date expDate) {
		super();
		this.ccno = ccno;
		this.ctype = ctype;
		this.code = code;
		this.expDate = expDate;
	}
	public Integer getCcid() {
		return ccid;
	}
	public void setCcid(Integer ccid) {
		this.ccid = ccid;
	}
	public Integer getCcno() {
		return ccno;
	}
	public void setCcno(Integer ccno) {
		this.ccno = ccno;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public Integer getCode() {
		return code;
	}
	public void setCode(Integer code) {
		this.code = code;
	}
	public Date getExpDate() {
		return expDate;
	}
	public void setExpDate(Date expDate) {
		this.expDate = expDate;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
}