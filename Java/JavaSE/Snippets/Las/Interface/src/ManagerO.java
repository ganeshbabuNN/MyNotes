interface AH
{
	int i = 0;
}
interface B0 extends AH
{
	int i = 1;
}
interface CG extends B0
{
	int i = 2;
}
public class ManagerO implements AH,B0{
	int i = 3;
	public static void main(String[] args) throws ClassCastException {
		AH a1 = new ManagerO();
		System.out.println(((B0)(CG)(B0)a1).i);				
	}
}
