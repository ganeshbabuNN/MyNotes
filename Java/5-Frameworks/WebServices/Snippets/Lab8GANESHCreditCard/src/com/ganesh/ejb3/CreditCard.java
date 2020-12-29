package com.ganesh.ejb3;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class CreditCard {
		@Id
		@Column(name="ccno")
		int ccno;
		@Column(name="bal")
		double bal;
		public CreditCard() {}
		public int getCcno() {
			return ccno;
		}
		public void setCcno(int ccno) {
			this.ccno = ccno;
		}
		public double getBal() {
			return bal;
		}
		public void setBal(double bal) {
			this.bal = bal;
		}
}
