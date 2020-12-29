package com.ganesh.jsf;

import java.util.ArrayList;
import java.util.List;

import javax.faces.event.ActionEvent;

public class HelloBean {
	String phone;
	List<User> users;
	boolean showTable;
	
	public void showUsers(ActionEvent ae){
		users= new ArrayList<User>();
		User user = new User();
		user.setFirstName("Ganesh");
		user.setLastName("Babu");
		user.setEmail("ganesh@jlc.com");
		user.setPhone("999");
		users.add(user);
		users.add(user);
		users.add(user);
		users.add(user);
		users.add(user);
		users.add(user);
		users.add(user);
		users.add(user);
		this.setShowTable(true);
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public boolean isShowTable() {
		return showTable;
	}

	public void setShowTable(boolean showTable) {
		this.showTable = showTable;
	}
}
