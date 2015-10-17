class D
{
	int i;
	int j;
	static int k;
}
public class Manager3 {
	public static void main(String[] args) {
		D d1 = new D();
		System.out.println(d1.i);
		d1 = null;
		System.out.println(d1.j);
		System.out.println(D.k);
	}
}
