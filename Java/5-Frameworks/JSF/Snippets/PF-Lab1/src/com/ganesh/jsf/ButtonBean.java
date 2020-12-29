package com.ganesh.jsf;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

@ManagedBean(name="buttonBean")
public class ButtonBean {
	 public void save(){
		 addMessage("Date Saved");
		 System.out.println("save() in ButtonBean");
	 }
	 
	 public void update(){
		 addMessage("Data updated");
		 System.out.println("update() in ButtonBean");
	 }
	 
	 public void delete(){
		 addMessage("Date deleted");
		 System.out.println("delete() in ButtonBean");
	 }

	private void addMessage(String summary) {
		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO,summary,null);
		FacesContext.getCurrentInstance().addMessage(null, message);
	}
}
