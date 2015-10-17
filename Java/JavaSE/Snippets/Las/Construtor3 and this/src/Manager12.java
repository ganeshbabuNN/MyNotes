class G
{
	G()
	{
		System.out.println(1);
	}
	G(int i, int j)
	{
		this();
		System.out.println(2);
	}
	G(int i)
	{
		this(i,i);
		System.out.println(3);
	}
}
public class Manager12 {
	public static void main(String[] args) {
		G g1 = new G();
		System.out.println("--------");
		G g2 = new G(1);
		System.out.println("--------");
		G g3 = new G(1,2);
	}
}
