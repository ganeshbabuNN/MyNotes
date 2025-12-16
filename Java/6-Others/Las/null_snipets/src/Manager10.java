class B
{
	int i;
	void test(B b)
	{
		System.out.println(b.i);
		System.out.println(i);
	}
}
public class Manager10 {
	public static void main(String[] args) {
		B b1 = new B();
		b1.i = 100;
		B b2 = new B();
		b2.i = 200;
		b2.test(b1);
	}
}
