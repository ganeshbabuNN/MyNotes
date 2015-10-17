package com.ganesh.spring.mvc;

public class StudentNotFoundException extends RuntimeException{
	private String sid;
	public StudentNotFoundException() {}
	
	public StudentNotFoundException(String sid){
		this.sid=sid;
	}
	
	@Override
	public String toString() {
		String msg="Student not found";
		if(sid!=null){
			msg="Student id:"+sid+" Not Found";
		}
		return msg;
	}
	
	@Override
	public String getMessage() {
		return toString();
	}

}
