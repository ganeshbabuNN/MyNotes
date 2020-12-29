package com.ganesh.bookstore.dao;

import java.util.List;

import com.ganesh.bookstore.to.OrderItemTO;
import com.ganesh.bookstore.to.OrderTO;

public interface OrderDAO {
	public int placeOrder(OrderTO oto,List items);
}
