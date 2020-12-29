package com.ganesh.bookstore.to;

import java.io.Serializable;

public class OrderItemTO implements Serializable {
	private int orderId;
	private int orderItemId;
	private String bid;
	private int qty;
	private double cost;
	
	
	public OrderItemTO(String bid, int qty, double cost) {
		this.bid = bid;
		this.qty = qty;
		this.cost = cost;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getOrderItemId() {
		return orderItemId;
	}
	public void setOrderItemId(int orderItemId) {
		this.orderItemId = orderItemId;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
}
