package com.ganesh.struts1;


import org.apache.struts.validator.ValidatorForm;

public class ChangeEmailForm extends ValidatorForm{
	private String currentEmail;
	private String newEmail;
	
	public String getCurrentEmail() {
		return currentEmail;
	}
	public void setCurrentEmail(String currentEmail) {
		this.currentEmail = currentEmail;
	}
	public String getNewEmail() {
		return newEmail;
	}
	public void setNewEmail(String newEmail) {
		this.newEmail = newEmail;
	}
	
	
}
