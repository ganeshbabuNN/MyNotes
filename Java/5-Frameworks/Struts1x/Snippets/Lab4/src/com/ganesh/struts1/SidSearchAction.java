package com.ganesh.struts1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class SidSearchAction extends Action{
	@Override
	public ActionForward execute(ActionMapping am, ActionForm af,
			HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		
		//1.collect the date
		SidSearchForm ssf = (SidSearchForm)af;
		String sid = ssf.getSid();
		
		//2. process the request
		String result ="";
		if(sid.equals("JLC-123") || sid.equals("JLC-999")){
			StudentTO sto = new StudentTO();
			sto.setSid(sid);
			sto.setBid("B-99");
			sto.setSname("Ganesh");
			sto.setEmail("ganesh@gmail.com");
			sto.setPhone("9939339");
			result ="sidResults";
			req.setAttribute("STO", sto);
		}else {
			result = "sidSearch";
			throw new StudentNotFoundException();
		}
		
		//3 Prepare the ActionForward
		return am.findForward(result);
	}

}
