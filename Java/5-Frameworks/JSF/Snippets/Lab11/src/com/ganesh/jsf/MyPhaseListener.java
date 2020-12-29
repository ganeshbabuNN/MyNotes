package com.ganesh.jsf;

import javax.faces.event.PhaseEvent;
import javax.faces.event.PhaseId;
import javax.faces.event.PhaseListener;



public class MyPhaseListener implements PhaseListener{

	@Override
	public void afterPhase(PhaseEvent event) {
		System.out.println("AfterPhase:" + event.getPhaseId());
	}

	@Override
	public void beforePhase(PhaseEvent event) {
		System.out.println("BeforePhase:" + event.getPhaseId());
		
	}

	@Override
	public PhaseId getPhaseId() {
		return PhaseId.ANY_PHASE;
	}
	
}
