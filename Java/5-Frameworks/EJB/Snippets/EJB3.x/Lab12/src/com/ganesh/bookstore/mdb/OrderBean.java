package com.ganesh.bookstore.mdb;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.annotation.Resource;
import javax.ejb.ActivationConfigProperty;

import javax.ejb.EJBException;
import javax.ejb.MessageDriven;
import javax.ejb.MessageDrivenContext;
import javax.jms.MapMessage;
import javax.jms.Message;
import javax.jms.MessageListener;


@MessageDriven(
		activationConfig={
		@ActivationConfigProperty(propertyName="destinatonType",propertyValue="javax.jms.Queue"),
		@ActivationConfigProperty(propertyName="destination",propertyValue="queue/JLCQueue"),
		@ActivationConfigProperty(propertyName="acknowledgeMode",propertyValue="Auto-acknowledge")
		})
public class OrderBean implements MessageListener{
	@Resource
	MessageDrivenContext mdc = null;
	public void setMessageDrivenContext(MessageDrivenContext arg0)
			throws EJBException {
		System.out.println("OrderBean-setMessageDrivenContext()");
	}
	
	@PostConstruct
	public void init(){
		System.out.println("OrderBean-init()");
	}
	
	@PreDestroy
	public void cleanup(){
		System.out.println("OrderBean-cleanup()");
		
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
