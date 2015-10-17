package com.ganesh.spring3;

import java.beans.PropertyEditorSupport;

public class StudentIDEditor extends PropertyEditorSupport{
	public void setAsText(String tx) throws IllegalArgumentException {
		String p1=tx.substring(0,3);
		String p2=tx.substring(4);
		StudentID sid= new StudentID(Integer.parseInt(p2), p1);
		this.setValue(sid);
	}
}
