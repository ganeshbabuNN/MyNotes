package com.ganesh.mdb.jms;

import java.util.Properties;

import javax.jms.MapMessage;
import javax.jms.Session;
import javax.jms.Topic;
import javax.jms.TopicConnection;
import javax.jms.TopicConnectionFactory;
import javax.jms.TopicPublisher;
import javax.jms.TopicSession;
import javax.naming.Context;
import javax.naming.InitialContext;

public class Lab9TopicClient {
	public static void main(String[] args) {
		TopicConnection tcon = null;
		TopicSession ts = null;
		try{
			Properties p = new Properties();
			p.put(Context.INITIAL_CONTEXT_FACTORY,"org.jnp.interfaces.NamingContextFactory");
			p.put(Context.PROVIDER_URL, "localhost:1099");
			p.put(Context.URL_PKG_PREFIXES, "org.jboss.naming");
			Context ctx = new InitialContext(p);
			TopicConnectionFactory tcf = (TopicConnectionFactory)ctx.lookup("TopicConnectionFactory");
			tcon=tcf.createTopicConnection();
			ts = tcon.createTopicSession(false, Session.AUTO_ACKNOWLEDGE);
			Topic top =(Topic)ctx.lookup("topic/JLCTopic");
			TopicPublisher tpub = ts.createPublisher(top);
			MapMessage mm =ts.createMapMessage();
			mm.setInt("cid",101);
			mm.setString("orderid", "O-99");
			mm.setString("oDate", "10/10/10");
			mm.setString("Msg", "I have placed order i month back, but boks are not delivered");
			tpub.publish(mm);
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
