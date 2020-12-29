package com.ganesh.bookstore.ejb2;

import java.rmi.RemoteException;
import java.util.List;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;

import com.ganesh.bookstore.dao.BooksDAO;
import com.ganesh.bookstore.dao.DAOFactory;
import com.ganesh.bookstore.to.BookTO;

public class BooksBean implements SessionBean{
	SessionContext ctx = null;
	BooksDAO booksDAO = null;
	public BooksBean() {
		System.out.println("BooksBean- D.C");
	}
	
	public void setSessionContext(SessionContext ctx)  {
		System.out.println("BookBean- setSessionContext()");
		this.ctx=ctx;
		
	}
	
	public void ejbCreate() {
		System.out.println("BookBean- ejbCreate()");
		booksDAO = DAOFactory.getBooksDAO();		
	}
	
	public void ejbRemove()  {
		System.out.println("BookBean- ejbRemove()");
		booksDAO = null;
	}
	public void ejbActivate(){
		System.out.println("BookBean- ejbActivate()");
	}

	public void ejbPassivate()  {
		System.out.println("BookBean- ejbPassivate()");
	}
	public int addBook(BookTO bto){
		int	bid = booksDAO.addBook(bto);
		return bid;
	}
	public List getAllBooks(){
		List blist = booksDAO.getAllBooks();
		return blist;
	}
	public List getBooksByAuthor(String author){
		List blist= booksDAO.getBooksByAuthor(author);
		return blist;
	}
	
	public List getBooksByPub(String pub){
		List blist = booksDAO.getBooksByPub(pub);
		return blist;
	}
}