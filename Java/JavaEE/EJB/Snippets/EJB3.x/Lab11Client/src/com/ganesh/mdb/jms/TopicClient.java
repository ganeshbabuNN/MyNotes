package com.ganesh.mdb.jms;

import java.util.Properties;

import javax.jms.Connection;
import javax.jms.MapMessage;
import javax.jms.MessageProducer;
import javax.jms.Queue;
import javax.jms.Session;
import javax.jms.Topic;
import javax.jms.TopicConnection;
import javax.jms.TopicConnectionFactory;
import javax.jms.TopicPublisher;
import javax.jms.TopicSession;
import javax.naming.Context;
import javax.naming.InitialContext;

public class TopicClient {
	public static void main(String[] args) {
		Connection tcon = null;
		Session ts = null;
		try{
			Properties p = new Properties();
			p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
			p.put(Context.PROVIDER_URL, "localhost:1099");
			p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");
			Context ctx = new InitialContext(p);
			TopicConnectionFactory tcf = (TopicConnectionFactory)ctx.lookup("TopicConnectionFactory");
			tcon=tcf.createConnection();
			ts = tcon.createSession(false, Session.AUTO_ACKNOWLEDGE);
			Queue top =(Queue)ctx.lookup("queue/JLCQueue");
			MessageProducer tpub = ts.createProducer(top);
			MapMessage mm =ts.createMapMessage();
			mm.setInt("cid",101);
			mm.setString("orderid", "O-99");
			mm.setString("oDate", "10/10/10");
			mm.setString("Msg", "I have placed order i month back, but boks are not delivered");
			tpub.send(mm);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				ts.close();
				tcon.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
}
