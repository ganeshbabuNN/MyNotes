
public class overload_const {

	int x,y;
	overload_const(){
		x = 10;
		y = 10;
	}
	overload_const(int a, int b){
		
		x = a;
		y = b;
	}

	void sum(){
		System.out.println("\n Sum is "+ ( x + y ));
	}
}
