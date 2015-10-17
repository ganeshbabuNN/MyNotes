class F
{
	int i;
	F()
	{
		i = 10;
	}
	F(int k)
	{
		i = k;
	}
}
public class Maanager5 {
	public static void main(String[] args) {
		F f1 = new F();
		System.out.println(f1.i);
		F f2 = new F(20);
		System.out.println(f2.i);		
	}	
}
