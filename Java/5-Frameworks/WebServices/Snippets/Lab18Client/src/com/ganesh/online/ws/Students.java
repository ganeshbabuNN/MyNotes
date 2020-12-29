package com.ganesh.online.ws;

import java.util.ArrayList;
import java.util.List;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name="students")
public class Students {
	List<StudentTO> student = new ArrayList<StudentTO>();

	public List<StudentTO> getStudent() {
		return student;
	}

	public void setStudent(List<StudentTO> student) {
		this.student = student;
	}
}
