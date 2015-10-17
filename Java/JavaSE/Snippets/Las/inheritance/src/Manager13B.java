class X2
{
	X2 x;
	X2(int i)
	{
		System.out.println(1);
	}
	int x(int x)
	{
		return x;
	}
	X2 x(X2 x)
	{
		return x;
	}
	X2 x()
	{
		System.out.println(2);
		return x;
	}
}

public class Manager13B {
	public static void main(String[] args) {
		X2 x1 = new X2(11);
		System.out.println("Main method");
		x1.x(22);
		System.out.println(x1.x);
	}
}
