
public class M2 {
	public static void main(String[] args) {
		int i = 10;
		test(i);
		System.out.println(i);
	}
	public static void test(int k)
	{
		int n = 20; // different variable apart from k
		System.out.println(n);
	}
}
