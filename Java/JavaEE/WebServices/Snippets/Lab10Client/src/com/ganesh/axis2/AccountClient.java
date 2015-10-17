package com.ganesh.axis2;

import com.ganesh.axis2.AccountServiceStub.Deposit;
import com.ganesh.axis2.AccountServiceStub.GetBal;
import com.ganesh.axis2.AccountServiceStub.GetBalResponse;
import com.ganesh.axis2.AccountServiceStub.Withdraw;

public class AccountClient {

	public static void main(String[] args) {
		try{
			AccountServiceStub ass = new AccountServiceStub();
			GetBal getbal = new GetBal();
			getbal.setAccno(101);
			GetBalResponse gbr = ass.getBal(getbal);
			double bal = gbr.get_return();
			System.out.println("Balance" + bal);
			Deposit deposit= new Deposit();
			deposit.setAccno(101);
			deposit.setAmt(5000);
			ass.deposit(deposit);
			Withdraw withdraw = new Withdraw();
			withdraw.setAccno(101);
			withdraw.setAmt(5000);
			ass.withdraw(withdraw);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
