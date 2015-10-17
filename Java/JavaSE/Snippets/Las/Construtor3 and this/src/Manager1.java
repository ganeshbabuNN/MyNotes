class B
{
	int i;
	static int j;
	int get()
	{
		return i;
	}
	void set(int i)
	{
		this.i = i;
	}
}
public class Manager1 {
	public static void main(String[] args) {
		B b1 = new B();
		System.out.println(b1.i);
		b1.i = 10;
		int k = b1.get();
		System.out.println(k);
		b1.set(20);
		System.out.println(b1.get());
	}
}
