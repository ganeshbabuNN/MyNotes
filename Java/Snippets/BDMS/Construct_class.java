
public class Construct_class {

int x,y,m,n;

Construct_class(int a, int b){
	x=10;y=10;
	  n = a;
	  m = b;
	
//Construct_class(int a,int b) {
//	x = a;
//	x = b;
//}

}

void sum(){
	System.out.println("Sum of number from constructor =" + ( n + m ));
	int b = this.n + this.m;
	System.out.println("\n---------------------- this sum is " + b);
}
}
