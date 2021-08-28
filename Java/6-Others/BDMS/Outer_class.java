
public class Outer_class {
int x = 10;
String name = "bhuvan";
void test(){
	class inner {
		void display(){
			System.out.println("\n Inner data:" + x);
		}
	}
inner obj1 = new inner();
obj1.display();

}
}
