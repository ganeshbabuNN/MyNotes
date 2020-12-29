package com.ganesh.spring3;

import org.springframework.beans.BeansException;
import org.springframework.context.*;

public class GBManager implements ApplicationContextAware{

	ApplicationContext ctx=null;
	
	public void adBatch(Batch bat){
		ctx.publishEvent(new BatchEvent(this, bat));
	}
	
	public void addWorkshop(Workshop ws){
		ctx.publishEvent(new WorkshopEvent(this,ws));
	}
	
	public void setApplicationContext(ApplicationContext ctx)
			throws BeansException {
		this.ctx=ctx;		
	}
}
