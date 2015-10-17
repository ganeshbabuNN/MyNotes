package com.ganesh.jsf;

import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

@ManagedBean(name="createBookBean")
@SessionScoped
public class CreateBookBean {
	private Book book =new Book();
	private List<Book> books= new ArrayList<Book>();
	
	public String reinit() {
		book= new Book();
		System.out.println("Books Size" + books.size());
		return null;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public List<Book> getBooks() {
		return books;
	}

	public void setBooks(List<Book> books) {
		this.books = books;
	}

}
