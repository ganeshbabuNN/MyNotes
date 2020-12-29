package com.ganesh.jsf12;

import com.ganesh.hibernate.Installment;
import com.ganesh.service.StudentService;
import com.ganesh.service.TPWebServices;

public class FreeOnlineBean {
		private String sid;
		private double amount;
		private int ccno;
		public String getSid() {
			return sid;
		}
		public void setSid(String sid) {
			this.sid = sid;
		}
		public double getAmount() {
			return amount;
		}
		public void setAmount(double amount) {
			this.amount = amount;
		}
		public int getCcno() {
			return ccno;
		}
		public void setCcno(int ccno) {
			this.ccno = ccno;
		}
		
		public String payFeeNow(){
			int accno=101;
			TPWebServices tpws=new TPWebServices();
			tpws.deposit(accno, amount);
			tpws.deductAmount(ccno, amount);
			StudentService as = new StudentService();
			Installment inst = new Installment(sid, amount, "CC", ccno);
			as.addInstallment(inst);
			System.out.println("sucess");
			return "sucess";
		}
		
}
