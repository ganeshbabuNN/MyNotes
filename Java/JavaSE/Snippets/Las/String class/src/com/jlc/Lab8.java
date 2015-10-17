package com.jlc;

public class Lab8 {
	public static void main(String[] args) {
		String str = "jlcindiajlc";
		System.out.println(str.length());
		byte b[] = new byte[5];
		b =str.getBytes();
		for(int i = 0 ; i < b.length; i++)
		{
			System.out.print((char)b[i]+ "...");
		}
		System.out.println("");
		char c[] = new char[15];
		c = str.toCharArray();
		for(int i = 0; i< c.length;i++)
		{
			System.out.print(c[i]+"...");
		}
		System.out.println("");
		
		byte b1[] = new byte[15];
		str.getBytes(3, 8, b1, 4);
		for(int i =0;i<b1.length;i++)
		{
			System.out.print((char)b1[i]+"...");
		}
		System.out.println("");
		
		char c1[] = new char[15];
		str.getChars(3, 8, c1, 4);
		for(int i = 0 ; i< c1.length;i++)
		{
			System.out.print(c1[i]+"...");
		}
		System.out.println("");
		String s1 = new String(b);
		System.out.println(s1);
		System.out.println(s1.length());
		String s2 = new String(c);
		System.out.println(s2);
		System.out.println(s2.length());	
	}
}
