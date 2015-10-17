package com.ganesh.hibernate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="orderitems")
public class OrderItem {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="otid")
	private Integer otid;
	@Column(name="qty")
	private Integer qty;
	@Column(name="cost")
	private double cost;
	
	@ManyToOne
	@JoinColumn(name="orderld",
	referencedColumnName="orderld")
	private Order order;
	
	@OneToOne
	@JoinColumn(name="bid")
	private Book book;
	public OrderItem() {
		// TODO Auto-generated constructor stub
	}
	public OrderItem(Integer qty, double cost) {
		super();
		this.qty = qty;
		this.cost = cost;
	}
	public Integer getOtid() {
		return otid;
	}
	public void setOtid(Integer otid) {
		this.otid = otid;
	}
	public Integer getQty() {
		return qty;
	}
	public void setQty(Integer qty) {
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
