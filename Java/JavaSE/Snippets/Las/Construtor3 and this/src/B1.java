
public class B1 {
	int i;
	static int j;
	B1(int i, int m)
	{
		this.i=i;
		j=m;
	}
	void print()
	{
		System.out.println(i);
		System.out.println(j);
	}
	public static void main(String[] args) {
		B1 b1 = new B1(10,20);
		b1.print();
	
	
	}
	
}
