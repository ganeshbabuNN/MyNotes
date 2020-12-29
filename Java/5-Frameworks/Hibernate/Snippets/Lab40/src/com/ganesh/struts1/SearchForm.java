package com.ganesh.struts1;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class SearchForm extends ActionForm{
	private String batchId;

	public String getBatchId() {
		return batchId;
	}

	public void setBatchId(String batchId) {
		this.batchId = batchId;
	}
	
	@Override
	public void reset(ActionMapping am, HttpServletRequest req) {
		this.batchId=null;
	}	
	
	public ActionErrors validate(ActionMapping am,
			HttpServletRequest res) {
		ActionErrors errors = new ActionErrors();
		if(batchId==null || batchId.length()==0){
			errors.add("batchId",new ActionError("errors.batchid.required"));
		}
		return errors;
	}
}
