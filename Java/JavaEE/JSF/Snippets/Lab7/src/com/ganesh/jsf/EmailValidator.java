package com.ganesh.jsf;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

public class EmailValidator implements Validator {

	@Override
	public void validate(FacesContext fc, UIComponent ui, Object obj)
			throws ValidatorException {
		String em=obj.toString();
		if(!em.endsWith("@jlc.com")){
			FacesMessage fm = new FacesMessage("email must end with @jlc.com");
			fc.addMessage("email", fm);
			throw new ValidatorException(fm);
		}	
		
	}
	
	

}
