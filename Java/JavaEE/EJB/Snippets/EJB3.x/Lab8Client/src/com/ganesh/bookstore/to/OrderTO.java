package com.ganesh.bookstore.to;

import java.io.Serializable;

public class OrderTO implements Serializable {
	private int orderId;
	private String cid;
	private String orderDate;
	private int totlQty;
	private double totalCost;
	private String status;
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public int getTotlQty() {
		return totlQty;
	}
	public void setTotlQty(int totlQty) {
		this.totlQty = totlQty;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public double getTotalCost() {
		return totalCost;
	}
	public void setTotalCost(double totalCost) {
		this.totalCost = totalCost;
	}
	
}
