package com.ganesh.bookstore.ejb2;

import java.rmi.RemoteException;
import java.util.List;

import javax.ejb.EJBObject;

import com.ganesh.bookstore.to.BookTO;

public interface BooksRemote extends EJBObject{
	public int addBook(BookTO bto) throws RemoteException;
	public List getAllBooks() throws RemoteException;
	public List getBooksByAuthor(String author) throws RemoteException;
	public List getBooksByPub(String pub) throws RemoteException;
	
}
