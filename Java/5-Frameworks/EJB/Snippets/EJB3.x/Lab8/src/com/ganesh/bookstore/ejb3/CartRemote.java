package com.ganesh.bookstore.ejb3;

import java.util.List;

import javax.ejb.Remote;

import com.ganesh.bookstore.to.OrderItemTO;

@Remote
public interface CartRemote{
	public void addBookToCart(OrderItemTO oito) ;
	public void removeBookFromCart(OrderItemTO oito);
	public List<OrderItemTO> showCart();
	public int placeOrder(String cid);
	
}
