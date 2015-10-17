class X1
{
	X1 x;
	X1()
	{
		System.out.println(1);
	}
	X1 x(X1 x)
	{
		return x;
	}
	X1 x()
	{
		System.out.println(2);
		return x;
	}
}

public class Manager13A {
	public static void main(String[] args) {
		X1 x1 = new X1();
		System.out.println("Main method");
		x1.x();
	}
}
