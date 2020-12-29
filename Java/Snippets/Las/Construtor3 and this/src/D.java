
public class D {
	int i;
	static int j;
	public static void main(String[] args) {
		D d1 = new D();
		d1.i = 10;
		j= 20;
		System.out.println(d1.i);
		System.out.println(d1.j);
		D d2 = new D();
		d2.i = 100;
		j = 200;
		System.out.println(d2.i);
		}
}
