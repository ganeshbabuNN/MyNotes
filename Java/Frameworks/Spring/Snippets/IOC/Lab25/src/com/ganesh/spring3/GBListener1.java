package com.ganesh.spring3;

import org.springframework.context.ApplicationEvent;
import org.springframework.context.ApplicationListener;

public class GBListener1 implements ApplicationListener{

	public void onApplicationEvent(ApplicationEvent event) {
		System.out.println("GBListener1-onApplicationEvent()");
		if(event instanceof BatchEvent){
			BatchEvent batchEvent=(BatchEvent)event;
			Batch bat=batchEvent.getBatch();
			System.out.println(bat);
		}else
			if(event instanceof WorkshopEvent){
				WorkshopEvent wsEvent=(WorkshopEvent)event;
				Workshop ws=wsEvent.getWorkshop();
				System.out.println(ws);
		}else {
			System.out.println(event);
		}
	}
}
