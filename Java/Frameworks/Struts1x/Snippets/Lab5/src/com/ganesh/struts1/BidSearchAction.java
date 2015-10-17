package com.ganesh.struts1;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionError;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class BidSearchAction extends Action{
	@Override
	public ActionForward execute(ActionMapping am, ActionForm af,
			HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		
		//1.collect the date
		BidSearchForm ssf = (BidSearchForm)af;
		String bid = ssf.getBid();
		
		//2. process the request
		String result ="";
		if(bid.equals("B-12") || bid.equals("B-99")){
			List<StudentTO> list = new ArrayList<StudentTO>();
			StudentTO sto = new StudentTO();
			sto.setSid("JLC-123");
			sto.setBid(bid);
			sto.setSname("Ganesh");
			sto.setEmail("ganesh@gmail.com");
			sto.setPhone("9939339");
			list.add(sto);list.add(sto);list.add(sto);
			list.add(sto);list.add(sto);list.add(sto);
			result ="bidResults";
			req.setAttribute("LIST", list);
		}else {
			result = "BidSearch";
			ActionErrors errors = new ActionErrors();
			errors.add("bid", new ActionError("bid.notfound"));
			saveErrors(req, errors);
		}	
		//3 Prepare the ActionForward
		return am.findForward(result);
	}

}
