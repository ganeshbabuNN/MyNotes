class C
{
	int i;
	static int j;
}
public class Manager2 {
	public static void main(String[] args) {
		C c1 = null;
		C c2 = null;
		C c3 = c1;
		c2 = new C();
		c3 = c1 = c2;
		c1.i = 100;
		System.out.println(c2.i);
		System.out.println(c3.i);
		C.j= 200;
		System.out.println(C.j);
		System.out.println(c1.i);		
	}
}
