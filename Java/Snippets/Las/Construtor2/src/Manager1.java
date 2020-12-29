class B
{
	int i;
	B()
	{
		System.out.println("Cons1");
	}
	B(int i)
	{
		System.out.println("Cons2");
	}
}
public class Manager1 {
	public static void main(String[] args) {
		B b1 = new B();
		System.out.println(b1.i);
		B b2 = new B(10);
		System.out.println(b2.i);
		b1.i = b2.i = 10;
		System.out.println(b2.i);
	}
}
