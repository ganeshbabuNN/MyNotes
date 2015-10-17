
public class C {
	public static void main(String[] args) {
		int i = 10;
		test(i--);
		System.out.println(i);
	}
	public static void test(int i)
	{
		System.out.println(i);
		System.out.println(i);
		System.out.println(i);
	}
}
