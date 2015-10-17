package com.ganesh.spring.mvc;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class BidValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return BidSearchCommand.class.equals(clazz);
	}

	public void validate(Object obj, Errors errors) {
		BidSearchCommand bidSearchCommand =(BidSearchCommand)obj;
		String bid=bidSearchCommand.getBid();
		if(bid==null || bid.length()==0) {
			errors.rejectValue("bid", "errors.bid.required");
		}else if(!bid.startsWith("B-")){
			errors.rejectValue("bid", "errors.bid.format1");
		}else {
			String p=bid.substring(2);
			try{
				int x=Integer.parseInt(p);
				if(x < 10 || x > 99)
					errors.rejectValue("bid", "errors.bid.format2");
			}catch (Exception e) {
				errors.rejectValue("bid", "errors.bid.format3");				
			}
		}
	}
	
	
}
