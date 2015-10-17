class V
{
	int i ;
	V()
	{
		System.out.println(1);
	}
	void test()
	{
		System.out.println(2);
	}
}
public class Manager11 {
	public static void main(String[] args) {
		V v1 = new V();
		v1.test();
	}
}
