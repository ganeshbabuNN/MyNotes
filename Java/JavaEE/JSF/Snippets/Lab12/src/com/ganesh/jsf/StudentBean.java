package com.ganesh.jsf;

import java.util.Date;
import java.util.Locale;

import javax.faces.component.UIViewRoot;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import javax.faces.event.ValueChangeEvent;

public class StudentBean {
	private String sid;
	
	public String searchStudentBySid(){
		System.out.println(sid);
		return "search";
	}
	
	public void change(String language){
		FacesContext context=FacesContext.getCurrentInstance();
		UIViewRoot root = context.getViewRoot();
		Locale en = new Locale(language);
		root.setLocale(en);
	}
	
	public void changeToEnglish(ActionEvent ae){
		change("en");
	}
	public void changeToHindi(ActionEvent ae){
		change("hi");
	}
	public void changeToTelugu(ActionEvent ae){
		change("te");
	}
	public void changeToKannada(ActionEvent ae){
		change("kn");
	}
	public void changeToTamail(ActionEvent ae){
		change("ta");
	}
	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}
	
	
	
}
