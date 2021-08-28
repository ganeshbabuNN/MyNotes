class Test1
{
	static void method1()
	{
		System.out.println("I am in the method1 in the test1");
	}
	static
	{
		System.out.println("I'm in the sib of test1");
	}
	public static void main(String[] args) {
		System.out.println("I'm in the main of test1");
	}
}
class Test2
{
	static
	{
		System.out.println("I'm in the sib of test2");
	}
	public static void main(String[] args) {
		System.out.println("I'm in the main of test2");
	}
}
public class Manager1B {
	public static void main(String[] args) {
		System.out.println("I'm in the main begin in manger1B");
		Test2.main(args);
		System.out.println("I'm in the main end");
	}
}
