package com.ganesh.bookstore.ejb3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;
import javax.ejb.PostActivate;
import javax.ejb.PrePassivate;
import javax.ejb.Remove;
import javax.ejb.SessionContext;
import javax.ejb.Stateful;

import com.ganesh.bookstore.dao.DAOFactory;
import com.ganesh.bookstore.dao.OrderDAO;
import com.ganesh.bookstore.to.OrderItemTO;
import com.ganesh.bookstore.to.OrderTO;

@Stateful(name="CartBean",mappedName="CartBean")
public class CartBean implements CartRemote{
	@Resource
	SessionContext ctx = null;
	List<OrderItemTO> cart = new ArrayList<OrderItemTO>();
	OrderDAO orderDAO = null;
	public CartBean() {
		System.out.println("CartBean-D.C");
	}
	
	@PreDestroy
	@PrePassivate
	public void cleanup() {
		System.out.println("CartBean-cleanup()");
	}
	
	@PostConstruct
	@PostActivate
	public void myInit() {
		System.out.println("CartBean-myInit()");
		orderDAO=DAOFactory.getOrderDAO();
	}

	@Override
	public void addBookToCart(OrderItemTO oito) {
		cart.add(oito);		
	}

	@Override
	public void removeBookFromCart(OrderItemTO oito) {
		cart.remove(oito);
	}

	@Override
	public List<OrderItemTO> showCart() {
		return cart;
	}

	@Remove
	public int placeOrder(String cid) {
		int tq =0;
		double tc=0.0;
		for(OrderItemTO oito:cart){
			tq=tq+oito.getQty();
			tc=tc+oito.getCost();
		}
		OrderTO oto = new OrderTO();
		oto.setCid(cid);
		oto.setOrderDate("15-Aug-13");
		oto.setStatus("New");
		oto.setTotlQty(tq);
		oto.setTotalCost(tc);
		int orderId =orderDAO.placeOrder(oto, cart);
		return orderId;
	}
	
	
}
