class O
{
	O()
	{
		System.out.println(1);
	}
}
class P extends O
{
	P()
	{
		this('a');
		System.out.println(2);
	}
	P(char c1)
	{
		this();  // recursive calling
		System.out.println(3);
	}
}
public class Manager7 {
	public static void main(String[] args) {
		P p1 = new P();		
	}
}
