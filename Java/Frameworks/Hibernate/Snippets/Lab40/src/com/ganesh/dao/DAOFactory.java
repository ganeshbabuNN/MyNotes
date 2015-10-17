package com.ganesh.dao;

public class DAOFactory {
	private static StudentDAO studentDAO=null;
	static{
		studentDAO = new HibernateStudentDAO();
	}
	public static StudentDAO getStudentDAO(){
		return studentDAO;
	}

}
