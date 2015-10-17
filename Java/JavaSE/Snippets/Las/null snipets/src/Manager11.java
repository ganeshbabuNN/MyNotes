class C
{
	int i;
	void print(C c1 , C c2)
	{
		System.out.println(i);
		System.out.println(this.i);
		System.out.println(c1.i);
		System.out.println(c2.i);
	}
}
public class Manager11 {
	public static void main(String[] args) {
		C c1 = new C();
		C c2 = new C();
		C c3 = new C();
		c1.i = 10;
		c2.i = 20;
		c3.i = 30;
		c1.print(c2, c3);
		c1.print(c1, c2);
	}	
}
