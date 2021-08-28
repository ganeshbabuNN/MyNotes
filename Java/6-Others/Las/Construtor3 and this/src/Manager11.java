class F
{
	F()
	{
		this(10);
		System.out.println(1);
	}
	F(int i)
	{
		System.out.println(2);
	}
}
public class Manager11 {
	public static void main(String[] args) {
		F f1 = new F();
		System.out.println("------");
		F f2 = new F(20);
	}
}
