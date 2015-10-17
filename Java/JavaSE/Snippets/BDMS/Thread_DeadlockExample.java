class NameClass{
	String name;
	synchronized public void printname(String name) throws InterruptedException{
		
		this.name = name;
		System.out.println("Name:" + this.name);
		AgeClass a = new AgeClass();
		System.out.println("Age is " + a.age);
		Thread.sleep(10000);
	}
	
}

class AgeClass{
	int age;
	synchronized public void printage(int age) throws InterruptedException{
		this.age = age;
		NameClass n = new NameClass();
		System.out.println("Name :" + n.name + "age:" + age);
		Thread.sleep(10000);
	}
}

 class MyThread1 extends Thread{
	 NameClass n;
	 public MyThread1(NameClass n){
		 this.n = n;
	 }
	 public void run(){
		 try {
			n.printname("Bhuvan");
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
	 
}

 class MyThread88 extends Thread{
	 AgeClass a;
	 public MyThread88(AgeClass a){
		 this.a = a;
	 }
	 public void run(){
		 try {
			a.printage(12);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	 }
 }
public class Thread_DeadlockExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		NameClass nm = new NameClass();
		AgeClass ad = new AgeClass();
		MyThread1 t1 = new MyThread1(nm);
		MyThread88 t2 = new MyThread88(ad);
		t1.start();t2.start();
		
		
	}

}
