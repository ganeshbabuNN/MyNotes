package com.ganesh.struts2;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport{
	boolean flag1 = false;
	boolean flag2 = true;
	List<String> courses;
	List<String> colors;
	
	public TestAction(){
		courses= new ArrayList<String>();
		courses.add("Java");
		courses.add("JSP");
		courses.add("EJB");
		courses.add("JDBC");
		courses.add("JSP");
		courses.add("Struts");
		courses.add("Hibernate");
		courses.add("XML");
		courses.add("FLEX");
		
		colors = new ArrayList<String>();
		colors.add("RED");
		colors.add("BLUE");
		colors.add("GREEN");
		colors.add("PINK");		
	}
	@Override
	public String execute() throws Exception {
		return "success";
	}
	public boolean isFlag1() {
		return flag1;
	}
	public void setFlag1(boolean flag1) {
		this.flag1 = flag1;
	}
	public boolean isFlag2() {
		return flag2;
	}
	public void setFlag2(boolean flag2) {
		this.flag2 = flag2;
	}
	public List<String> getCourses() {
		return courses;
	}
	public void setCourses(List<String> courses) {
		this.courses = courses;
	}
	public List<String> getColors() {
		return colors;
	}
	public void setColors(List<String> colors) {
		this.colors = colors;
	}
	
	
}