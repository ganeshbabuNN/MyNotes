package com.ganesh.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.*;


import com.ganesh.hibernate.Installment;
import com.ganesh.service.StudentService;
import com.ganesh.service.TPWebServices;

public class FeeOnlineAction extends Action{
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		DynaActionForm daf =(DynaActionForm)form;
		String sid =daf.get("sid").toString();
		String am=daf.get("amt").toString();
		String ccn=daf.get("ccno").toString();
		double amt=Double.parseDouble(am);
		int ccno=Integer.parseInt(ccn);
		int accno=101;
		TPWebServices tpws=new TPWebServices();
		tpws.deposit(accno, amt);
		tpws.deductAmount(ccno, amt);
		StudentService as = new StudentService();
		Installment inst = new Installment(sid, amt, "CC", ccno);
		as.addInstallment(inst);
		return mapping.findForward("success");
	}
}
