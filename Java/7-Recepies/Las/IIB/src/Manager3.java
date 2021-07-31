class D
{
	int i;
	D(int i)
	{
		System.out.println(this.i);
		this.i= i;
	}
	D()
	{
		System.out.println(i);
		i = 10;
	}
	{
		i = 200;
	}
	
}
public class Manager3 {
	public static void main(String[] args) {
		D d1 = new D();
		System.out.println("------");
		D d2 = new D(100);
		System.out.println(d1.i + ":" + d2.i);
	}
}
