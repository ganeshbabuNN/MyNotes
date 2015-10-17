package com.ganesh.bookstore.ejb2;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.ejb.SessionBean;
import javax.ejb.SessionContext;

import com.ganesh.bookstore.dao.DAOFactory;
import com.ganesh.bookstore.dao.OrderDAO;
import com.ganesh.bookstore.to.OrderItemTO;
import com.ganesh.bookstore.to.OrderTO;

public class CartBean implements SessionBean{
	SessionContext ctx = null;
	String cid;
	List cart = new ArrayList();
	OrderDAO orderDAO = null;
	public CartBean() {
		System.out.println("CartBean-ejbRemove()");
	}
	public void setSessionContext(SessionContext ctx){
		System.out.println("CartBean-ejbRemove()");
		this.ctx =ctx;
	}
	
	public void ejbRemove() {
		System.out.println("CartBean-ejbRemove()");
	}
	
	public void ejbActivate() {
		System.out.println("CartBean-ejbActivate()");
	}

	public void ejbPassivate()  {
		System.out.println("CartBean-ejbPassivate()");
	}

	public void ejbCreate(){
		System.out.println("CartBean-ejbCreate()");
		orderDAO =DAOFactory.getOrderDAO(); 
	}
	public void ejbCreate(String cid){
		System.out.println("CartBean-ejbCreate(String cid)");
		this.cid= cid;
		orderDAO =DAOFactory.getOrderDAO();
	}
	public void addBookToCart(OrderItemTO oito){
		cart.add(oito);
	}
	public void removeBookFromCart(OrderItemTO oito){
		cart.remove(oito);
	}
	public List showCart(){
		return cart;
	}
	public int placeOrder(String cid){
		this.cid =cid;
		int tq =0;
		double tc =0.0;
		Iterator it = cart.iterator();
		while(it.hasNext()){
			OrderItemTO oito=(OrderItemTO)it.next();
			tq=tq+oito.getQty();
			tc=tc+oito.getCost();
		}
		OrderTO oto = new OrderTO();
		oto.setCid(cid);
		oto.setOrderDate("15-Aug-13");
		oto.setStatus("New");
		oto.setTotlQty(tq);
		oto.setTotalCost(tc);
		int orderId=orderDAO.placeOrder(oto, cart);
		return orderId;
	}	
}
