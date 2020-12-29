package com.ganesh.struts2;

public class StudentNotFoundException extends Exception{
	String sid;
	public StudentNotFoundException() {
		// TODO Auto-generated constructor stub
	}
	public StudentNotFoundException(String sid) {
		this.sid=sid;
	}
	@Override
	public String getMessage() {
		String msg = "Student Id Not Found";
		if(sid!=null){
			msg ="Student with Id:"+sid+"Not found";
		}
		return msg;
	}
}
