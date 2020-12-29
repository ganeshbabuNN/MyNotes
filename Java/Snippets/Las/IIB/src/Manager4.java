class F
{
	F()
	{
		System.out.println(1);
	}
	F(int i)
	{
		this();
		System.out.println(2);
	}
	{
		System.out.println(3);
	}
}
public class Manager4 {
	public static void main(String[] args) {
		F f1 = new F();
		System.out.println("------");
		F f2 = new F(10);		
	}
}
