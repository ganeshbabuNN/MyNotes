package com.ganesh.jsf;

import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;

@ManagedBean(name="studentBean")
public class StudentBean {
	List<StudentTO> students;
	
	public StudentBean() {
		students = new ArrayList<StudentTO>();
		students.add(new StudentTO("JLC-01","Ganesh","ganesh@jlc.com",9999));
		students.add(new StudentTO("JLC-01","Ganesh1","ganesh1@jlc.com",8888));
		students.add(new StudentTO("JLC-01","Ganesh2","ganesh2@jlc.com",7777));
		students.add(new StudentTO("JLC-01","Ganesh3","ganesh3@jlc.com",6666));
		students.add(new StudentTO("JLC-01","Ganesh4","ganesh4@jlc.com",55555));
		students.add(new StudentTO("JLC-01","Ganesh5","ganesh5@jlc.com",44444));
		students.add(new StudentTO("JLC-01","Ganesh6","ganesh6@jlc.com",33333));
		students.add(new StudentTO("JLC-01","Ganesh7","ganesh7@jlc.com",22222));
		students.add(new StudentTO("JLC-01","Ganesh8","ganesh8@jlc.com",11111));
		students.add(new StudentTO("JLC-01","Ganesh9","ganesh9@jlc.com",00000));
		students.add(new StudentTO("JLC-01","Ganesh10","ganesh10@jlc.com",12000));
		students.add(new StudentTO("JLC-01","Ganesh11","ganesh11@jlc.com",13000));
		students.add(new StudentTO("JLC-01","Ganesh12","ganesh12@jlc.com",14000));
		students.add(new StudentTO("JLC-01","Ganesh13","ganesh13@jlc.com",15000));
		students.add(new StudentTO("JLC-01","Ganesh14","ganesh14@jlc.com",16000));
		students.add(new StudentTO("JLC-01","Ganesh15","ganesh15@jlc.com",17000));
	}

	public List<StudentTO> getStudents() {
		return students;
	}

	public void setStudents(List<StudentTO> students) {
		this.students = students;
	}
	
}
