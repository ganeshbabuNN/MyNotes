package com.ganesh.service;

import java.util.List;

import com.ganesh.dao.DAOFactory;
import com.ganesh.dao.StudentDAO;
import com.ganesh.to.StudentTO;

public class StudentService {
	public List<StudentTO> getStudentByBatchId(String bid){
		StudentDAO  sdao=DAOFactory.getStudentDAO();
		return sdao.getStudentByBatchId(bid);
	}

}
