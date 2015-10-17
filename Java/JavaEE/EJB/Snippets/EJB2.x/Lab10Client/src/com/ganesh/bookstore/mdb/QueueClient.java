package com.ganesh.bookstore.mdb;

import java.util.Properties;

import javax.jms.MapMessage;
import javax.jms.Queue;
import javax.jms.QueueConnection;
import javax.jms.QueueConnectionFactory;
import javax.jms.QueueSender;
import javax.jms.QueueSession;
import javax.jms.Session;
import javax.naming.Context;
import javax.naming.InitialContext;

public class QueueClient {
public static void main(String[] args) {
	QueueConnection qcon = null;
	QueueSession qs = null;
	try{
		Properties p = new Properties();
		p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
		p.put(Context.PROVIDER_URL, "localhost:1099");
		p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");
		Context ctx = new InitialContext(p);
		QueueConnectionFactory qcf = (QueueConnectionFactory)ctx.lookup("QueueConnectionFactory");
	    qcon= qcf.createQueueConnection();
	    qs=qcon.createQueueSession(false, Session.AUTO_ACKNOWLEDGE);
	    Queue que = (Queue)ctx.lookup("queue/JLCQueue");
	    QueueSender qsend = qs.createSender(que);
	    
	    MapMessage mm = qs.createMapMessage();
	    mm.setInt("cid", 101);
	    mm.setString("odate", "10/10/10");
	    mm.setInt("totalQty", 5);
	    mm.setDouble("totalCost", 9900);
	    mm.setString("status", "New");
	    qsend.send(mm);
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			qs.close();
			qcon.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
}
