class C
{
	int i;	
}
public class ManagerB {
	public static void main(String[] args) {
		C c1 = new C();
		C c2 = new C();
		C c3 = new C();
		C c4 = new C();
		c1.i = 20;
		c2.i = 30;
		
		System.out.println("c3.i= " + c3.i);
	}

}

