
interface AD
{
	int i = 0;
}
interface B6 extends AD
{
	int i = 1;
}
interface CC extends B6
{
	int i = 2;
}
public class ManagerK implements AD{
	int i = 3;
	public static void main(String[] args) {
		CC c1 =  (CC)new ManagerK();
		System.out.println(c1.i);
		
	}	
}
