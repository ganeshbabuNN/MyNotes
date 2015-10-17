package com.ganesh.bookstore.ejb3.client;

import java.util.List;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;

import com.ganesh.bookstore.ejb3.CartRemote;
import com.ganesh.bookstore.to.OrderItemTO;

public class Lab8Client {
	public static void main(String[] args) {
		try{
			Properties p = new Properties();
			p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
			p.put(Context.PROVIDER_URL, "jnp://localhost:1099");
			p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");
			Context ctx = new InitialContext(p);
			
			Object obj = ctx.lookup("CartBean/remote");			
			CartRemote cr = (CartRemote)obj;
			
			OrderItemTO oito1= new OrderItemTO("B-1",2,200);
			cr.addBookToCart(oito1);
			OrderItemTO oito2= new OrderItemTO("B-2",3,300);
			cr.addBookToCart(oito2);
			OrderItemTO oito3= new OrderItemTO("B-12",4,400);
			cr.addBookToCart(oito3);
			OrderItemTO oito4= new OrderItemTO("B-13",1,100);
			cr.addBookToCart(oito4);
			
			System.out.println("All Items in Cart");
			List<OrderItemTO> cart = cr.showCart();
			for(OrderItemTO ot : cart){
				System.out.println(ot.getBid() + "\t" +ot.getQty() + "\t"+ ot.getCost());
			}
			cr.removeBookFromCart(oito1);
			System.out.println("All Items in cart");
			List<OrderItemTO> cart1 = cr.showCart();
			for(OrderItemTO ot : cart1){
				System.out.println(ot.getBid() + "\t" +ot.getQty() + "\t"+ ot.getCost());
				}
			
			cr.placeOrder("C-97");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}

