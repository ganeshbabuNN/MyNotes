package com.ganesh.bookstore.dao;

import java.util.List;

import com.ganesh.bookstore.to.BookTO;

public interface BooksDAO {
	public int addBook(BookTO bto);
	public List getAllBooks() ;
	public List getBooksByAuthor(String author) ;
	public List getBooksByPub(String pub) ;
}
