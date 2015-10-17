package com.ganesh.dao;

import java.util.List;

import com.ganesh.to.StudentTO;

public interface StudentDAO {
	public List<StudentTO> getStudentByBatchId(String bid);
}
