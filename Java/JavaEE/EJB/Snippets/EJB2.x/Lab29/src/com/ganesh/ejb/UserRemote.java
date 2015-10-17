package com.ganesh.ejb;

import java.rmi.RemoteException;

import javax.ejb.EJBObject;

import com.ganesh.to.UserTO;

public interface UserRemote extends EJBObject{
	UserTO verifyUser(String username,String password) throws RemoteException;
	boolean changePassword(int uid,String npwd) throws RemoteException;
	boolean updateInfo(int uuid,String email,long phone) throws RemoteException;
}
