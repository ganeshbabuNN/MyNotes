package com.ganesh.bookstore.mdb;

import javax.ejb.EJBException;
import javax.ejb.MessageDrivenBean;
import javax.ejb.MessageDrivenContext;
import javax.jms.MapMessage;
import javax.jms.Message;
import javax.jms.MessageListener;

public class RequestBean implements MessageDrivenBean,MessageListener{
	MessageDrivenContext mdc = null;

	public void setMessageDrivenContext(MessageDrivenContext mdc)
			throws EJBException {
		System.out.println("RequestBean-setMessageDrivenContext()");

		this.mdc=mdc;
	}
	public void ejbCreate(){
		System.out.println("MailBean-ejbCreate()");
	}
	
	public void ejbRemove() throws EJBException {
		System.out.println("RequestBean-ejbRemove()");
	}

	public void onMessage(Message msg) {
		System.out.println("RequestBean-onMessage()");
		try{
			//store in DB
			MapMessage mm=(MapMessage)msg;
			System.out.println(mm.getInt("cid"));
			System.out.println(mm.getString("orderId"));
			System.out.println(mm.getString("oDate"));
			System.out.println(mm.getString("Msg"));
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
