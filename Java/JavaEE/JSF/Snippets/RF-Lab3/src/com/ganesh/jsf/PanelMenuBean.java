package com.ganesh.jsf;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

public class PanelMenuBean {
	private String selectedMenu="Nothing Selected";

	public String getSelectedMenu() {
		return selectedMenu;
	}

	public void setSelectedMenu(String selectedMenu) {
		this.selectedMenu = selectedMenu;
	}
	
	public String updateSelectedMenu(){
		FacesContext context = FacesContext.getCurrentInstance();
		ExternalContext ec = context.getExternalContext();
		String selected = ec.getRequestParameterMap().get("selectedMenu");
		setSelectedMenu("Selected Menu is:" +selected);
		System.out.println("selected menu item is----" + selectedMenu);
		return null;
	}
	
}
