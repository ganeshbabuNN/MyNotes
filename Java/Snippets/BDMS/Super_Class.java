
public class Super_Class {

int i, j;

void disp(){
	System.out.println("the value of i + j is " + ( i +j ));
	
}

}
class subclass extends Super_Class{
	int k;
	void disp(){
	System.out.println("\nthe value of i + j + k "  + ( i + j + k ));
	}	
}
