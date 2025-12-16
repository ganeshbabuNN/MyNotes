package com.ganesh.spring.mvc;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class UserValidator implements Validator{


	
	public void validate(Object com,Errors errors){
		User user=(User)com;
		System.out.println("validate() method");
		
		if (user.getUsername()==null || user.getUsername().length()==0) {
			errors.rejectValue("username", "error.username.required", null);
		}
		
		if (user.getPassword()==null || user.getPassword().length()==0) {
			errors.rejectValue("password", "error.password.required", null);
		}
	}

	@Override
	public boolean supports(Class cls) {
			return User.class.equals(cls);
	}
}

