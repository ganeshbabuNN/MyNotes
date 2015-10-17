class A3
{
	static int i = 10;
	static
	{
		System.out.println("I'm in the SIB of A");
	}	
	static void test1()
	{
		System.out.println("I'm in the test1 of A");
	}
	static void test2()
	{
		System.out.println("I'm in the test2 of A");
	}
}
class B3
{
	static int i = 20;
	static void test()
	{
		System.out.println("I'm in the test() of B");
	}
	static
	{
		System.out.println("I'm in the SIB of B");
	}
}
public class Manager12 {
	public static void main(String[] args) {
		System.out.println("I'm in the main");
		System.out.println(B3.i);
		A3.test1();
		A3.test2();
		B3.test();
	}
}
