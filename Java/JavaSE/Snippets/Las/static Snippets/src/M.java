class I
{
	static int j = 10;
}
class K {
	static int j = 20;
}
public class M
{
	static int j = 30;
	public static void main(String[] args) {
		int j = 40;
		System.out.println(M.j);
		System.out.println(K.j);
		System.out.println(M.j);
		System.out.println(j);
	}
}