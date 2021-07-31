class H
{
	int i, j,k;
	H(int i)
	{
		i++; //1
	}
	H(int i, int j)
	{
		i++; //2
		j++; //2
	}
	H(int i, int j, int k)
	{
		i++;//3
		j++; //3
		k++; //3
	}
}
public class Manager5 {
	public static void main(String[] args) {
		H h1 = new H(1);
		H h2 = new H(1,2);
		H h3 = new H(1,2,3);
		System.out.println(h1.i ); //4
		System.out.println(h2.i + ":" + h2.j);//4: 4
		System.out.println(h3.i + ":" + h3.j +";" + h3.k);//4:4:4
	}
}
