interface AG
{
	int i = 0;
}
interface B9 extends AG
{
	int i = 1;
}
interface CF extends B9
{
	int i = 2;
}
public class ManagerN implements AG,B9,CF{
	int i = 3;
	public static void main(String[] args) throws ClassCastException {
		AG a1 = new ManagerN();
		System.out.println(a1.i);
		System.out.println((((CF)a1).i)); /// new technique
	}

}
