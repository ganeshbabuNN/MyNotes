package com.ganesh.bookstore.ejb3;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;
import javax.ejb.SessionContext;
import javax.ejb.Stateless;

import com.ganesh.bookstore.dao.BooksDAO;
import com.ganesh.bookstore.dao.DAOFactory;
import com.ganesh.bookstore.to.BookTO;

@Stateless(name="BooksBean",mappedName="BooksBean")
public class BooksBean implements BooksRemote{
	@Resource
	SessionContext ctx = null;
	BooksDAO booksDAO = null;
	public BooksBean() {
		System.out.println("BooksBean- D.C");
	}
	
	@PostConstruct
	public void init(){
		System.out.println("BooksBean-init()");
		booksDAO = DAOFactory.getBooksDAO();
	}
	@PreDestroy
	public void cleanup(){
		System.out.println("BooksBean-cleanup");
		booksDAO=null;
	}
	public int addBook(BookTO bto) {
		int bid = booksDAO.addBook(bto);
		return bid;
	}
	public List<BookTO> getAllBooks() {
		List<BookTO> blist =booksDAO.getAllBooks();
		return blist;
	}
	public List<BookTO> getBooksByAuthor(String author) {
		List<BookTO> blist = booksDAO.getBooksByAuthor(author);
		return blist;
	}
	public List<BookTO> getBooksByPub(String pub) {
		List<BookTO> blist =booksDAO.getBooksByPub(pub);
		return blist;
	}	
}