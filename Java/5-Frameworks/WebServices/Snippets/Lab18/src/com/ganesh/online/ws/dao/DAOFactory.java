package com.ganesh.online.ws.dao;

import com.ganesh.online.ws.dao.impl.HibernateStudentDAO;

public class DAOFactory {
	static StudentDAO studentDAO;
	static {
		studentDAO = new HibernateStudentDAO();
	}
	public static StudentDAO getStudentDAO(){
		return studentDAO;
	}
}
