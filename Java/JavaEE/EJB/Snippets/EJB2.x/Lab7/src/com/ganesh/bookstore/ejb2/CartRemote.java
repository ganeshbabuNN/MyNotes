package com.ganesh.bookstore.ejb2;

import java.rmi.RemoteException;
import java.util.List;

import javax.ejb.EJBObject;

import com.ganesh.bookstore.to.OrderItemTO;

public interface CartRemote extends EJBObject{
	public void addBookToCart(OrderItemTO oito) throws RemoteException;
	public void removeBookFromCart(OrderItemTO oito)throws RemoteException;
	public List showCart() throws RemoteException;
	public int placeOrder(String cid) throws RemoteException;
	
}
