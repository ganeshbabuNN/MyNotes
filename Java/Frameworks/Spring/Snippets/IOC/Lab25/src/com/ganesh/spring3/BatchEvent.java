package com.ganesh.spring3;

import org.springframework.context.ApplicationEvent;


public class BatchEvent extends ApplicationEvent {
	Batch batch;
	
	public BatchEvent(Object source,Batch batch) {
		super(source);
		this.batch=batch;
	}
	public Batch getBatch() {
		return batch;
	}
}
