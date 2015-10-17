
public class G 
{
	public static void main(String[] args) {
		System.out.println("main method");
		test();
		System.out.println("main ends");
	}
	public static void test()
	{
		System.out.println("test methods");
		test1();
		System.out.println("test ends");
	}
	public static void test1()
	{
		System.out.println("Test1 method");
		test2();
		System.out.println("test1 ends");
	}
	public static void test2()
	{
		System.out.println("test2 method");
		int i = 10;
		System.out.println(i);
		System.out.println("Test2 Ends");
	}
}
