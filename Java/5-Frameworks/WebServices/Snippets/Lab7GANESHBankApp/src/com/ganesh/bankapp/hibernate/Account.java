package com.ganesh.bankapp.hibernate;

public class Account {
		private int accno;
		private double bal;
		private String atype;
		public Account() {}
		public Account(double bal, String atype) {
			super();
			this.bal = bal;
			this.atype = atype;
		}
		public int getAccno() {
			return accno;
		}
		public void setAccno(int accno) {
			this.accno = accno;
		}
		public double getBal() {
			return bal;
		}
		public void setBal(double bal) {
			this.bal = bal;
		}
		public String getAtype() {
			return atype;
		}
		public void setAtype(String atype) {
			this.atype = atype;
		}
}
