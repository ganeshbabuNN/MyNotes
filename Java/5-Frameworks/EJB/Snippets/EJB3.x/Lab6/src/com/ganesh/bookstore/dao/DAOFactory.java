package com.ganesh.bookstore.dao;

public class DAOFactory {
	static BooksDAO booksDAO;
	static {
		booksDAO = new JDBCBooksDAO();
	}
	public static BooksDAO getBooksDAO() {
		return booksDAO;
	}
}
