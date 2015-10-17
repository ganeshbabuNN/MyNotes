
class figure {
 int x,y;
 figure( int x1, int y1){
	 x= x1; y = y1;
	 
 }
int  area(){
System.out.println("\nNo Area!!!");
return 0;
	
}
}

class triangle extends figure {
	triangle(int x1,int y1){
		super(x1,y1);
	}
int area(){
	System.out.println("Area of trinagle:");
	return ( x * y);
}
}

class rectangle extends figure {
	rectangle ( int x1,int y1){
		super(x1,y1);
	}
int area(){
	System.out.println("Area of Rectangle");
	return ( x + y);
}
}

public class FindAreas {

		public static void main(String[] args) {
	
	figure fig_obj = new figure(10,10);
	triangle tri_obj = new triangle ( 3,4);
	rectangle rect_obj = new rectangle(3,4);
	
	System.out.println("Area is" +  fig_obj.area());
	System.out.println("Area is" + tri_obj.area());
	System.out.println("Area is" + rect_obj.area());
		}

}
