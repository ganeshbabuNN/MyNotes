package com.ganesh.jsf;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

@FacesValidator("jlcun")
public class UNValidator implements Validator {

	@Override
	public void validate(FacesContext fc, UIComponent ui, Object obj)
			throws ValidatorException {
		String em=obj.toString();
		if(!em.startsWith("JLC-")){
			FacesMessage fm = new FacesMessage("username must start JLC-");
			fc.addMessage("username", fm);
			throw new ValidatorException(fm);
		}	
		
	}
	
	

}
