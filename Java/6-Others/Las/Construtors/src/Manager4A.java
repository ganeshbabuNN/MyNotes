class F
{
	static int i;
}
public class Manager4A {
	
	public static void main(String[] args) {
		F f1 = new F();
		f1.i = 100;
		System.out.println(f1.i);
		F f2 = new F();
		System.out.println(f2.i);
		f2.i = 200;
		System.out.println(f1.i);		
	}
}
