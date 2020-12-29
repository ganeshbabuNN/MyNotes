
class Test
{
	static void method1()
	{
		System.out.println("I am in the method1 in the test");
	}
	static
	{
		System.out.println("I'm in the sib of test");
	}
	public static void main(String[] args) {
		System.out.println("I'm in the main");
	}
}
public class Manager {
	static
	{
		System.out.println("i'm in the sib of manger");
	}
	public static void main(String[] args) {
		System.out.println("test main begins");
		System.out.println("test main ends");
	}
}
