package com.ganesh.struts2;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

public class MyUrlValidator extends FieldValidatorSupport{
	
	@Override
	public void validate(Object object) throws ValidationException {
		String fieldName = getFieldName();
		String fieldValue = (String)getFieldValue(fieldName, object);
		if(fieldValue!=null || fieldValue.length()!=0){
			fieldValue =fieldValue.trim();
			if(!fieldValue.endsWith(".com")){
				addFieldError(fieldName, object);
			}
		}
	
	}
}
