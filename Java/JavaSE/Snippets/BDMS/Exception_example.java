
public class Exception_example {
	public static void main(String[] args) {
			
int x = 20;
int y = 20;
int array[] = new int[1];
try {
	y = y /x;
	System.out.println("inside exception");
	
	array[10] = 10;
	System.out.println("y" + y);
}catch (ArithmeticException  e){
System.out.println("divide by 0" );

}
catch (Exception e){
	System.out.println("second exception" + e);
}
}
}

