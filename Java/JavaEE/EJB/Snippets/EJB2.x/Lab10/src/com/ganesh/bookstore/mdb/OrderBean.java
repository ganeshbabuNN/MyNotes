package com.ganesh.bookstore.mdb;

import javax.ejb.EJBException;
import javax.ejb.MessageDrivenBean;
import javax.ejb.MessageDrivenContext;
import javax.jms.MapMessage;
import javax.jms.Message;
import javax.jms.MessageListener;

public class OrderBean implements MessageDrivenBean,MessageListener{
	MessageDrivenContext mdc = null;
	public void setMessageDrivenContext(MessageDrivenContext arg0)
			throws EJBException {
		System.out.println("OrderBean-setMessageDrivenContext()");
	}
	public void ejbCreate(){
		System.out.println("OrderBean-ejbCreate()");
	}

	public void ejbRemove() throws EJBException {
		System.out.println("OrderBean-ejbRemove()");
		
	}
	public void onMessage(Message msg) {
		System.out.println("OrderBean-onMessage()");
		try{
		//store in DB
			MapMessage mm = (MapMessage)msg;
			System.out.println(mm.getInt("cid"));
			System.out.println(mm.getString("odate"));
			System.out.println(mm.getInt("totalQty"));
			System.out.println(mm.getDouble("totalCost"));
			System.out.println(mm.getString("status"));
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
