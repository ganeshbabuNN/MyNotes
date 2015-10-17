
public class D {
	public static void main(String[] args) {
		int i = 10;
		test(i++);
		test(i);
	}
	public static void test(int k)
	{
		System.out.println(k);
	}
}
