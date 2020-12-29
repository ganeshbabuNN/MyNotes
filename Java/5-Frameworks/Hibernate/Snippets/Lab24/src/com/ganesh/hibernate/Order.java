package com.ganesh.hibernate;

import java.util.Date;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="orders")
public class Order {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="orderld")
	private Integer orderld;
	@Column(name="totalQty")
	private Integer totalQty;
	@Column(name="totalCost")
	private Double totalCost;
	@Column(name="orderDate")
	private Date orderDate;
	@Column(name="status")
	private String status;
	@ManyToOne
	@JoinColumn(name="cid",referencedColumnName="cid")
	private Customer customer;
	@OneToOne
	@JoinColumn(name="addid")
	private ShippingAddress address;
	@OneToMany(mappedBy="order")
	private Set<OrderItem> orderitems;
	public Order() {
		// TODO Auto-generated constructor stub
	}
	
	public Order(Integer totalQty, Double totalCost, Date orderDate,
			String status) {
		super();
		this.totalQty = totalQty;
		this.totalCost = totalCost;
		this.orderDate = orderDate;
		this.status = status;
	}

	public Integer getOrderld() {
		return orderld;
	}
	public void setOrderld(Integer orderld) {
		this.orderld = orderld;
	}
	public Integer getTotalQty() {
		return totalQty;
	}
	public void setTotalQty(Integer totalQty) {
		this.totalQty = totalQty;
	}
	public Double getTotalCost() {
		return totalCost;
	}
	public void setTotalCost(Double totalCost) {
		this.totalCost = totalCost;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
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
	public ShippingAddress getAddress() {
		return address;
	}
	public void setAddress(ShippingAddress address) {
		this.address = address;
	}
	public Set<OrderItem> getOrderitems() {
		return orderitems;
	}
	public void setOrderitems(Set<OrderItem> orderitems) {
		this.orderitems = orderitems;
	}
	
	
}
