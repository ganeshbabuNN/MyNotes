package com.ganesh.service;

import com.ganesh.dao.DAOFactory;
import com.ganesh.dao.InstallmentDAO;
import com.ganesh.hibernate.Installment;

public class StudentService {
	public void addInstallment(Installment inst) {
		InstallmentDAO idao = DAOFactory.geInstallmentDAO();
		idao.addInstallment(inst);
	}
}
