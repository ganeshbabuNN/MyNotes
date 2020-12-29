
public class H {
	public static void main(String[] args) {
		test(1);
		int i = 10;
		test(i);
		test();// no arg method
	}
	public static void test(int i)
	{
		System.out.println(i);
	}
}
