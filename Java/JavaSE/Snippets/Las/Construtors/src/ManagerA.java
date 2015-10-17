class A1
{
	int i;
	A1()
	{
		i++;
	}
	A1(int k)
	{
		i++;
	}
}
public class ManagerA {
	public static void main(String[] args) {
		A1 a1 = new A1();
		A1 a2 = new A1();
		A1 a3 = new A1();
		A1 a4 = new A1();
		System.out.println("a1.i= " + a1.i);
	}
}
