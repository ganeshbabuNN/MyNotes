package com.ganesh.spring.mvc;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class ContactCommandValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		return ContactCommand.class.equals(clazz);
	}

	public void validate(Object command, Errors errors) {
		ContactCommand cc=(ContactCommand)command;
		String fn=cc.getFname();
		String In=cc.getLname();
		String em=cc.getEmail();
		String ph=cc.getPhone();
		
		if(fn==null || fn.length()==0){
			errors.rejectValue("fname", "errors.required",new Object[]{"First Name"},null);
		}
		
		if(In==null || In.length()==0){
			errors.rejectValue("lname", "errors.required",new Object[]{"Last Name"},null);
		}
		
		if(em==null || em.length()==0){
			errors.rejectValue("email", "errors.required",new Object[]{"Email ID"},null);
		}
		
		if(ph==null || ph.length()==0){
			errors.rejectValue("phone", "errors.required",new Object[]{"Phone"},null);
		}
	}
}
