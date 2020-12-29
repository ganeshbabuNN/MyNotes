package com.ganesh.hibernate;


public class OrderItem {
	private int otid;
	private int qty;
	private double cost;
	private Order order;
	private Book book;
	public OrderItem() {
		// TODO Auto-generated constructor stub
	}
	public OrderItem(int qty, double cost) {
		super();
		this.qty = qty;
		this.cost = cost;
	}
	public int getOtid() {
		return otid;
	}
	public void setOtid(int otid) {
		this.otid = otid;
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
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
}
