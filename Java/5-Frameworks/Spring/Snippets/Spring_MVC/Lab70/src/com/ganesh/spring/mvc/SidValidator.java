package com.ganesh.spring.mvc;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class SidValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return SidSearchCommand.class.equals(clazz);
	}

	public void validate(Object obj, Errors errors) {
		SidSearchCommand sidSearchCommand =(SidSearchCommand)obj;
		String sid=sidSearchCommand.getSid();
		if(sid==null || sid.length()==0) {
			errors.rejectValue("sid", "errors.sid.required");
		}else if(!sid.startsWith("GB-")){
			errors.rejectValue("sid", "errors.sid.format1");
		}else {
			String p=sid.substring(3);
			try{
				int x=Integer.parseInt(p);
				if(x < 100 || x > 999)
					errors.rejectValue("sid", "errors.sid.format2");
			}catch (Exception e) {
				errors.rejectValue("sid", "errors.sid.format3");				
			}
		}
	}
	
	
}
