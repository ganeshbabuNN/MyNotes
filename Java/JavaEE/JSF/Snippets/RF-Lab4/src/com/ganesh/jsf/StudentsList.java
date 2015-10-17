package com.ganesh.jsf;

import java.util.ArrayList;
import java.util.List;

public class StudentsList {
	private List<StudentBean> studentsList;
	private boolean flag = true;
	
	public List<StudentBean> getStudentsList() {
		return studentsList;
	}
	public void setStudentsList(List<StudentBean> studentsList) {
		this.studentsList = studentsList;
	}
	public boolean isFlag() {
		return flag;
	}
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	
	public String getStudents(){
		studentsList = new ArrayList<StudentBean>();
		StudentBean student = new StudentBean("s1", "B17", "s1@jlc.com", "111", "Mathikere", 10000);
		studentsList.add(student);
		student = new StudentBean("s2", "B18", "s2@jlc.com", "222", "Marathalli", 80000);
		studentsList.add(student);
		student = new StudentBean("s3", "B19", "s3@jlc.com", "333", "Madiwala", 120000);
		studentsList.add(student);
		student = new StudentBean("s4", "B20", "s4@jlc.com", "5555", "HSR Layout", 5000);
		studentsList.add(student);
		student = new StudentBean("s4", "B21", "s5@jlc.com", "444", "Mathikere", 10000);
		studentsList.add(student);		
		return "students";
	}
	
}
