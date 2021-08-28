class A2
{
	static int p;
	A2()
	{
		p++;   //0
	}
	A2(int i)
	{
		p++;  //1
	}
	A2(int i, int j)
	{
		p++;  //2
	}
}
public class Manager2 {
	public static void main(String[] args) {
		A2 a1 = new A2();
		A2 a2 = new A2(10);
		A2 a3 = new A2(10,20);
		System.out.println(a3.p);
	}
}
