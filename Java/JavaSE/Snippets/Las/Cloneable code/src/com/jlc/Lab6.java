package com.jlc;

public class Lab6 {
	public static void main(String[] args) {
		String s1 = "jlc";
		String s2 = "jlc";
		String s3 = new String("jlc1");
		String s4 = new String("jlc1");
		String s5 =s4.intern();
		String s6 = "jlc1";
		System.out.println(s1 == s2);//t
		System.out.println(s2 == s3); //f
		System.out.println(s3 == s4); //f
		System.out.println(s6 == s5); //t
		System.out.println(s1.equals(s2)); //t
		System.out.println(s2.equals(s3));//f
		System.out.println(s3.equals(s4));//t
		System.out.println(s5.equals(s6));//t
	}
}
