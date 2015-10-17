package com.ganesh.spring3;

import org.springframework.context.ApplicationListener;

public class GBListener3 implements ApplicationListener<WorkshopEvent>{

	public void onApplicationEvent(WorkshopEvent event) {
		System.out.println("GBListener3-onApplicationEvent()");
		System.out.println("Workshop event is raised");
		WorkshopEvent be=(WorkshopEvent)event;
		System.out.println(be.getWorkshop());
		
	}
}
