class A4
{
	static
	{
		System.out.println("This is A's SIB");
	}
	final void test1()
	{
		System.out.println("this is in Test1()");
	}
}
class B4 extends A4
{
	void test1()  // cannot override test1 since it final
	{
		System.out.println("this is in test1()");
	}
	void test2()
	{
		System.out.println("this is in test2()");
	}
	static
	{
		System.out.println("this is B's SIB");
	}
}
public class Finala1 {
		public static void main(String[] args) {
			B3 b = new B3();
			b.test1();
			b.test2();
		}
}
