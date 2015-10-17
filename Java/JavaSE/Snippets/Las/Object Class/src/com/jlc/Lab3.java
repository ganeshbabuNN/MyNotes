package com.jlc;

class Student
{
	int id;
	String sname;
	public Student(int id, String sname) {
		this.id = id;
		this.sname = sname;
	}
	@Override
	protected void finalize() throws Throwable {
		System.out.println("in finalize():Resource released");
	}
}
public class Lab3 {
	public static void main(String[] args) {
		Student s1 = new Student(12, "Sri");
		Student s2 = new Student(13, "Dande");
		Student s3 = new Student(14, "Nivas");
		Student s4 = new Student(12, "Sri");
		Student s5 = new Student(12, "Sri");
		System.runFinalization();
		System.gc();
		s2 = s1;
		System.runFinalization();
		System.gc();
		s3 = null;
		s4 = new Student(78,"Dande");
		m1();
		System.runFinalization();
		System.gc();		
	}
	static void m1()
	{
		Student s1 = new Student(45, "Srinvias");
		Student s2 = new Student(45, "Srinvias");
	}
}
