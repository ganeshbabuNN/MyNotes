package com.ganesh.struts1;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

public class BidSearchForm extends ActionForm{
	private String bid;
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	
	
	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		this.bid = null;
	}
	
	@Override
	public ActionErrors validate(ActionMapping am,HttpServletRequest req) {
		ActionErrors errors = new ActionErrors();
		  if(bid == null || bid.length() == 0){
			  errors.add("bid", new ActionError("errors.bid.required"));
		  }else if(!bid.startsWith("B-")){
			  errors.add("bid", new ActionError("errors.bid.format1"));
		  }else {
			  String p = bid.substring(2);
			  try{
				  int x = Integer.parseInt(p);
				  if(x < 10 || x >  99) {
					  errors.add("bid", new ActionError("errors.bid.format2"));
				  }  
			  }catch(Exception e){
				  errors.add("bid", new ActionError("errors.bid.format3"));
			  }
		  }
		return errors;
	}
}
