
public class MangerA {
	public static void main(String[] args) {
		int i;
		test((i = 10) * 25);
		System.out.println();
	}
	static int test(int i)
	{
		int j = 15;
		System.out.println(i);
		return j;
	}
}
