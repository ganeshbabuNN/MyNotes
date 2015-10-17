package com.ganesh.struts1;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.ganesh.service.StudentService;
import com.ganesh.to.StudentTO;


public class SearchAction extends Action{
	public ActionForward execute(ActionMapping am, ActionForm af,
			HttpServletRequest req, HttpServletResponse res)
			throws Exception {
			SearchForm lf= (SearchForm)af;
			String bid = lf.getBatchId();
			StudentService serv = new StudentService();
			List<StudentTO> list = serv.getStudentByBatchId(bid);
			if(list==null || list.size()==0){
				String msg ="No Student found for the batch "+ bid;
				req.setAttribute("EMSG", msg);
			}else {
				req.setAttribute("SLIST", list);
			}
			ActionForward forward = am.findForward("success");
			return forward;
	}
}
