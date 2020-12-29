package com.ganesh.jsf;

import javax.faces.event.ActionEvent;

public class HelloBean {
	String name;
	boolean showGrid;
	boolean showTable;
	
	public void show(ActionEvent ae){
		System.out.println(name);
		setShowGrid(true);
	}

	private void setShowGrid(boolean b) {
		System.out.println(name);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isShowTable() {
		return showTable;
	}

	public void setShowTable(boolean showTable) {
		this.showTable = showTable;
	}

	public boolean isShowGrid() {
		return showGrid;
	}
	

}
