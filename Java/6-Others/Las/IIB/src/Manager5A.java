class H1
{
	int i, j,k;
	H1(int i)
	{
		this.i=i++; 
	}
	H1(int i, int j)
	{
		this.i=i++; 
		this.j=j++; 
	}
	H1(int i, int j, int k)
	{
		this.i=i++;
		this.j=j++; 
		this.k=k++; 
	}
	
}
public class Manager5A {
	public static void main(String[] args) {
		H1 h1 = new H1(1);
		H1 h2 = new H1(1,2);
		H1 h3 = new H1(1,2,3);
		System.out.println(h1.i ); 
		System.out.println(h2.i + ":" + h2.j);
		System.out.println(h3.i + ":" + h3.j +":" + h3.k);
	}
}
