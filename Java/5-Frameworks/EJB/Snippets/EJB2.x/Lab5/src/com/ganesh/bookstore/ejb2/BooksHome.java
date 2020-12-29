package com.ganesh.bookstore.ejb2;
import java.rmi.RemoteException;

import javax.ejb.*;

public interface BooksHome extends EJBHome{
	public BooksRemote create() throws RemoteException,CreateException;

}
