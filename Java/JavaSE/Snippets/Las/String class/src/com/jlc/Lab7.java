package com.jlc;

public class Lab7 {
	public static void main(String[] args) {
		String str1 = "jlcindia";
		String str2 = new String("jlcindia");
		String str3 = str2.intern();
		System.out.println(str1 == str3);//t
		String s1 = "jlc" + "india";
		System.out.println(s1 == str1); //f
		String s2 = "jlc";
		s2 = s2 +"india";
		System.out.println(s2 == str1); //f
		String s3 = "india";
		s3 = "jlc" + s3;
		System.out.println(s3 == str1); //f
		String s4 = "jlc";
		String s5 = "india";
		String s6 = s4 + s5; 
		System.out.println(s6 == str1); //f
		String str = "abc";
		int x = str.hashCode(); 
		System.out.println(x);	
	}	
}
