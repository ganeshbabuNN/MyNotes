package com.ganesh.bookstore.ejb2.client;

import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;

import com.ganesh.bookstore.ejb2.BooksHome;
import com.ganesh.bookstore.ejb2.BooksRemote;
import com.ganesh.bookstore.to.BookTO;

public class Lab5Client {
	public static void main(String[] args) {
		try{
			Properties p = new Properties();
			p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
			p.put(Context.PROVIDER_URL, "localhost:1099");
			p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");
			Context ctx = new InitialContext(p);
			Object obj = ctx.lookup("JLCBooksHomeJNDI");
			BooksHome home =(BooksHome)obj;
			BooksRemote br = home.create();
			BookTO bto = new BookTO("Learn Spring", "Sri", 99, "java", "SD", "11-11-13", 1, "OK");
			int bid = br.addBook(bto);
			System.out.println("Book is inserted with BookID" + bid);
			System.out.println("All Books");
			List blist = br.getAllBooks();
			Iterator it = blist.iterator();
			while(it.hasNext()){
				BookTO bto1 = (BookTO)it.next();
				System.out.println(bto1.getBookid()+"\t"+bto1.getAuthor()+"\t"+ bto1.getPub());
			}
			System.out.println("Books by Author");
			blist = br.getBooksByAuthor("Sri");
			it = blist.iterator();
			while(it.hasNext()){
				BookTO bto1 = (BookTO)it.next();
				System.out.println(bto1.getBookid()+"\t"+bto1.getBname()+ "\t"+ bto1.getAuthor()+ "\t"+ bto1.getPub());
			}
			System.out.println("Books by Pub");
			blist = br.getBooksByPub("JLC");
			it=blist.iterator();
			while(it.hasNext()){
				BookTO bto1 = (BookTO)it.next();
				System.out.println(bto1.getBookid()+"\t" +bto1.getBname()+"\t"+bto1.getAuthor()+"\t"+bto1.getPub());
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
