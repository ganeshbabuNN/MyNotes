package com.ganesh.bookstore.ejb3.client;

import java.util.List;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;

import com.ganesh.bookstore.ejb3.BooksRemote;
import com.ganesh.bookstore.to.BookTO;

public class Lab6Client {
	public static void main(String[] args) {
		try{
			Properties p = new Properties();
			p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
			p.put(Context.PROVIDER_URL, "localhost:1099");
			p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");
			Context ctx = new InitialContext(p);
			Object obj = ctx.lookup("BooksBean/remote");
			BooksRemote br =(BooksRemote)obj; 
			BookTO bto = new BookTO("Learn Hadoop", "Sri", 99, "java", "SD", "11-11-13", 1, "OK");
			int bid = br.addBook(bto);
			System.out.println("Book is inserted with BookID" + bid);
			System.out.println("All Books");
			List<BookTO> blist = br.getAllBooks();
			for(BookTO bto1:blist){
				System.out.println(bto1.getBookid()+"\t"+bto1.getBname()+"\t"+bto1.getAuthor()+"\t"+bto1.getPub());
			}
			System.out.println("Books by Author");
			blist = br.getBooksByAuthor("Sri");
			for(BookTO bto1:blist){
				System.out.println(bto1.getBookid()+"\t"+bto1.getBname()+"\t"+bto1.getAuthor()+"\t"+bto1.getPub());
			}
			System.out.println("Books by Pub");
			blist = br.getBooksByPub("JLC");
			for(BookTO bto1:blist){
				System.out.println(bto1.getBookid()+"\t"+bto1.getBname()+"\t"+bto1.getAuthor()+"\t"+bto1.getPub());
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
