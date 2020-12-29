package com.ganesh.bookstore.ejb3;

import java.util.List;
import javax.ejb.Remote;

import com.ganesh.bookstore.to.BookTO;

@Remote
public interface BooksRemote{
	public int addBook(BookTO bto);
	public List<BookTO> getAllBooks() ;
	public List<BookTO> getBooksByAuthor(String author) ;
	public List<BookTO> getBooksByPub(String pub) ;
	
}
