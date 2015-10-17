
public class N {
	public static void main(String[] args) {
		int i = 10;
		i = i++ + i-- + ++i ;
		  // 10    11   11  
		 //  11    10   11
		System.out.println(i);
	}
}
