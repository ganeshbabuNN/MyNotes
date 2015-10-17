package com.ganesh.bookstore.ejb2.client;

import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;

import com.ganesh.bookstore.ejb2.CartHome;
import com.ganesh.bookstore.ejb2.CartRemote;
import com.ganesh.bookstore.to.OrderItemTO;

public class Lab7Client {
	public static void main(String[] args) {
		try{
			Properties p = new Properties();
			p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
			p.put(Context.PROVIDER_URL, "localhost:1099");
			p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");
			Context ctx = new InitialContext(p);
			Object obj = ctx.lookup("JLCCartHomeJNDI");
			CartHome home =(CartHome)obj;
			CartRemote cr = home.create("C-11");
			OrderItemTO oito1= new OrderItemTO("B-10",5,200);
			cr.addBookToCart(oito1);
			OrderItemTO oito2= new OrderItemTO("B-11",8,300);
			cr.addBookToCart(oito2);
			OrderItemTO oito3= new OrderItemTO("B-12",9,400);
			cr.addBookToCart(oito3);
			OrderItemTO oito4= new OrderItemTO("B-13",7,100);
			cr.addBookToCart(oito4);
			System.out.println("All Items in Cart");
			List cart = cr.showCart();
			Iterator it =cart.iterator();
			while(it.hasNext()){
				OrderItemTO ot = (OrderItemTO)it.next();
				System.out.println(ot.getBid()+"\t" +ot.getQty()+"\t"+ot.getCost());
			}
			cr.removeBookFromCart(oito1);
			System.out.println("All Items in cart");
			cart= cr.showCart();
			it=cart.iterator();
			while(it.hasNext()){
				OrderItemTO ot =(OrderItemTO)it.next();
				System.out.println(ot.getBid()+"\t"+ot.getQty()+"\t"+ot.getCost());
			}
			cr.placeOrder("C-3");
			cr.remove();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}

