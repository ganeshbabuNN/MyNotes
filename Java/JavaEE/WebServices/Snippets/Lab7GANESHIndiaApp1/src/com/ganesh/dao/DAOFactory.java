package com.ganesh.dao;

public class DAOFactory {
	static InstallmentDAO idao=null;
	static {
		idao= new HibernateInstallmentDAO();
	}
	public static InstallmentDAO geInstallmentDAO(){
		return idao;
	}
}
