package com.ganesh;

// demostration the string concatination
public class Lab1 
{
	public static void main(String[] args) {
		String st = "ganesh is a master";
		boolean b1 = st.startsWith("g");
		boolean b2 = st.endsWith("h");
		System.out.println(st.startsWith(st));
		System.err.println(st.length());
		
		char ch[] = new char[st.length()];
		st.getChars(0, 18, ch,0);
		System.out.println(ch);
		
		for(int i = 0; i<ch.length; i++)
		{
			if(ch[i]== 'a')
				System.out.println("equals to a");
			else
				System.out.println("not equal to a");					
		}
	}
	

}
