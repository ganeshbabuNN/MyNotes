interface AF
{
	int i = 0;
}
interface B8 extends AF
{
	int i = 1;
}
interface CE extends B8
{
	int i = 2;
}
public class ManagerM implements AF,B8,CE{
	int i = 3;
	public static void main(String[] args) throws ClassCastException {
		CE c1 = new ManagerM();
		System.out.println(c1.i);
		AF a1 = new ManagerM();
		System.out.println(a1.i);
		B8 b1 = new ManagerM();
		System.out.println(b1.i);
	}

}
