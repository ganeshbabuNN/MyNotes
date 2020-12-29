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
		@ActivationConfigProperty(propertyName="destinatonType",propertyValue="javax.jms.Topic"),
		@ActivationConfigProperty(propertyName="destination",propertyValue="topic/JLCTopic"),
		@ActivationConfigProperty(propertyName="acknowledgeMode",propertyValue="Auto-acknowledge")		
		})
public class MailBean implements MessageListener {
	MessageDrivenContext mdc = null;
	@Resource
	public void setMessageDrivenContext(MessageDrivenContext mdc)
			throws EJBException {
		System.out.println("MailBean-setMessageDrivenContext()");
		this.mdc=mdc;		
	}
	@PostConstruct
	public void init(){
		System.out.println("MailBean-init()");
	}
	@PreDestroy
	public void cleanup() {
		System.out.println("MailBean-cleanup()");		
	}
	
	public void onMessage(Message msg) {
		try{
			//send mail to emailid of Customer and Manager
			System.out.println("MailBean-onMessage()");
			MapMessage mm=(MapMessage)msg;
			System.out.println(mm.getInt("cid"));
			System.out.println(mm.getString("orderId"));
			System.out.println(mm.getString("oDate"));
			System.out.println("Msg");
		}catch(Exception e){
			e.printStackTrace();
		}	
	}

	

	
	

}
