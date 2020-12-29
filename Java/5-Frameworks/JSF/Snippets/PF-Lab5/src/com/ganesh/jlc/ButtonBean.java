package com.ganesh.jlc;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

@ManagedBean(name="buttonBean")
public class ButtonBean {
	public void save(ActionEvent actionEvent) {
		addMessage("Data saved");
		System.out.println("save() in Button Bean");
	}
	public void update(ActionEvent actionEvent) {
		addMessage("Data update");
		System.out.println("update() in Button Bean");
	}
	public void delete(ActionEvent actionEvent) {
		addMessage("Data deleted");
		System.out.println("delete() in Button Bean");
	}
	
	public void addMessage(String summary){
		FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, summary, null);
		FacesContext.getCurrentInstance().addMessage(null, message);
	}
}
