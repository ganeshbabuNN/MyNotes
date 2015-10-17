package com.ganesh.spring3;

import org.springframework.context.ApplicationListener;

public class GBListener2 implements ApplicationListener<BatchEvent>{

	public void onApplicationEvent(BatchEvent event) {
		System.out.println("GBListener2-onApplicationEvent()");
		System.out.println("Batch event is raised");
		BatchEvent be=(BatchEvent)event;
		System.out.println(be.getBatch());
		
	}
}
