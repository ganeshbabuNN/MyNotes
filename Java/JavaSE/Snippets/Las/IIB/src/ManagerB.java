class T
{
	static
	{
		System.out.println(1);
	}
	{
		System.out.println(2);
	}
	T()
	{
		System.out.println(3);
	}
}
public class ManagerB extends T
{
  ManagerB()
  {
	  System.out.println(4);
  }
  static
  {
	  System.out.println(5);
  }
  {
	    System.out.println(6);
  }
  public static void main(String[] args) {
	  new ManagerB();
}
  

}
