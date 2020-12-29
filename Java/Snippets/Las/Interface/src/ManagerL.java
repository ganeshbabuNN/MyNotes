interface AE
{
	int i = 0;
}
interface B7 extends AE
{
	int i = 1;
}
interface CD extends B7
{
	int i = 2;
}
public class ManagerL implements AE{
	int i = 3;
	public static void main(String[] args) throws ClassCastException {
		CD c1 = (CD)new ManagerL();
		System.out.println(c1.i); 
	}

}
