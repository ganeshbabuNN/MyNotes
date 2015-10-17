class A1
{
	int i;
	static int j;
	A1()
	{
		System.out.println(i);
		System.out.println(j);
	}
	void print()
	{
		System.out.println(i);
		System.out.println(j);
	}
}
public class ManagerA {
	public static void main(String[] args) {
		A1 a1 = new A1();
		a1.print();
		A1 a2 = new A1();
		a2.i = 10;
		a2.j= 20;
		a2.print();
	}
	
}
