package com.lara;

abstract class ManagerH {
		int i;
		abstract void test2();
		static void disp()
		{
			System.out.println("inside static method of abstract class");
		}
		public static void main(String[] args) {
			ManagerH.disp();
		}
}
