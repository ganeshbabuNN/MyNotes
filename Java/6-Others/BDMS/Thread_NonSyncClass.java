class callme{
	 void call(String msg) throws InterruptedException{
		System.out.println("[" + msg );
		Thread.sleep(10);
		System.out.println("]");
	}
}
class caller implements Runnable{

	String msg;
	callme target;
	Thread t;
	public caller(callme targ,String s){
		target = targ;
		msg = s;
		t = new Thread(this);
		t.start();
	}
	
	@Override
	public void run() {
		try {
			target.call(msg);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
}

public class Thread_NonSyncClass {

	public static void main(String[] args) throws InterruptedException {
	callme target = new callme();
	caller ob1 = new caller(target, "Hello");
	caller ob2 = new caller(target, "Synchronized");
	caller ob3 = new caller(target, "world");
	ob1.t.join();
	ob2.t.join();
	ob3.t.join();

	}

}
