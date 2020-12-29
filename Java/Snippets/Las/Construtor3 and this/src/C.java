
public class C {
	int i;
	static int j; // get affectd
	C()
	{
		i = 10;
		j = 20;
	}
	C(int k, int m)
	{
		i = k;
		j = m;
	}
	void print()
	{
		System.out.println(i);
		System.out.println(j);
	}
	public static void main(String[] args) {
		C c1 = new C();
		C c2 = new C(30,40);
		c1.print();
		c2.print();
	}
}
