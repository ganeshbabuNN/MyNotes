class E
{
	E(double d)
	{
		System.out.println(1);
	}
}
class F extends E
{
	F()
	{
		E(10.0);
	}
}
public class Manager2 {
	public static void main(String[] args) {
		F f1 = new F();
	}
}
