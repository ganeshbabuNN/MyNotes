package com.ganesh.dao;

import com.ganesh.to.UserTO;

public interface UserDAO {
	UserTO verifyUser(String username,String password);
	boolean changePassword(int uid,String npwd);
	boolean updateInfo(int uuid,String email, long phone);
}
