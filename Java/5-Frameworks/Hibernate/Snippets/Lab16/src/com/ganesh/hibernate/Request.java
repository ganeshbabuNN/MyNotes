package com.ganesh.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="myrequests1")
public class Request {
	@Id
	@Column(name="reqId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	 private Integer reqId;
	@Column(name="reqDate")
	 private String reqDate;
	@Column(name="description")
	 private String description ;
	@Column(name="status")
	 private String status;
	@ManyToOne
	@JoinColumn(name="cid" ,referencedColumnName="cid")
	 private Customer customer;
	 public Request() {}
	public Request(String reqDate, String description, String status) {
		super();
		this.reqDate = reqDate;
		this.description = description;
		this.status = status;
	}
	public Integer getReqId() {
		return reqId;
	}
	public void setReqId(Integer reqId) {
		this.reqId = reqId;
	}
	public String getReqDate() {
		return reqDate;
	}
	public void setReqDate(String reqDate) {
		this.reqDate = reqDate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@Override
	public String toString() {
		return "Request [reqId=" + reqId + ", reqDate=" + reqDate
				+ ", description=" + description + ", status=" + status + "]";
	}
	
	 
}