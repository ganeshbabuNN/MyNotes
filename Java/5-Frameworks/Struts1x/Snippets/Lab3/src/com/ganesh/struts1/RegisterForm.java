package com.ganesh.struts1;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class RegisterForm extends ActionForm{
	private String sname;
	private String email;
	private String phone;
	private String gender;
	private String[] course;
	private String timings;
	private String remarks;
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String[] getCourse() {
		return course;
	}
	public void setCourse(String[] course) {
		this.course = course;
	}
	public String getTimings() {
		return timings;
	}
	public void setTimings(String timings) {
		this.timings = timings;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		System.out.println("rest()");
		this.sname = null;
		this.email = null;
		this.phone = null;
		this.gender = null;
		this.timings = null;
		this.remarks = null;
	}
	@Override
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		ActionErrors errors = new ActionErrors();
		if(sname == null || sname.length()==0) {
			errors.add("sname", new ActionError("error.sname.required"));
		}
		 if(email == null || email.length() == 0) {
			errors.add("email", new ActionError("error.email.required"));
		}else if(!email.endsWith(".com")){
			errors.add("email",new ActionError("error.email.format"));
		}
		 if(phone == null || phone.length() == 0){
			errors.add("phone", new ActionError("error.phone.required"));
		} 
		 if(gender == null || gender.length()==0){
			errors.add("gender", new ActionError("error.gender.required"));
		 }
		 if (course == null || course.length == 0){
			 errors.add("course", new ActionError("error.course.required"));
		 }
		 if(timings == null || timings.length()== 0){
			 errors.add("timings", new ActionError("error.timings.required"));
		 }
		 if(remarks == null || remarks.length()== 0){
			 errors.add("remarks", new ActionError("error.timings.remarks"));
		 }
		return errors;
	}
}
