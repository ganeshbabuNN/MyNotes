package com.ganesh.jsf12;

import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

public class Mbdemobean {
	private String name;
	private String email;
	private String phone;
	private String dob;
	private double fee;
	private List<String> courses;
	private Map<String,Long> refs;
	
	public String toString() {
		return super.toString()+"\t" +
				name+"\t"+email+"\t"+phone+"\t"+dob+"\t"
				+fee;
	}
	private CourseBean mycourse;
	static{
		System.out.println("Mbdemobean-S.B");
	}
	public Mbdemobean() {
		System.out.println("Mbdemobean- D.C");
	}
	@PostConstruct
	public void myInit(){
		System.out.println("Mbdemobean-myInit()");
	}
	@PreDestroy
	public void myCleanup(){
		System.out.println("Mbdemobean-myCleanup()");
	}
	public String show(){
		System.out.println("Mbdemobean-show()");
		System.out.println(name);
		System.out.println(email);
		System.out.println(phone);
		System.out.println(dob);
		System.out.println(fee);
		System.out.println(courses);
		System.out.println(refs);
		System.out.println(mycourse);
		return "show";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public double getFee() {
		return fee;
	}
	public void setFee(double fee) {
		this.fee = fee;
	}
	public List<String> getCourses() {
		return courses;
	}
	public void setCourses(List<String> courses) {
		this.courses = courses;
	}
	public Map<String, Long> getRefs() {
		return refs;
	}
	public void setRefs(Map<String, Long> refs) {
		this.refs = refs;
	}
	public CourseBean getMycourse() {
		return mycourse;
	}
	public void setMycourse(CourseBean mycourse) {
		this.mycourse = mycourse;
	}
}
