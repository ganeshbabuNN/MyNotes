
class ChildThread implements Runnable {
	String name;
	Thread t;
	ChildThread(String tname){
		name = tname;
		t = new Thread(this,name);
		System.out.println("Child thread" + t);
		t.start();
	}

public void run(){
	try{
		for ( int i = 0;i < 10;i ++ ){
			System.out.println("Child thread" + i);
			Thread.sleep(1000);
		}
	}catch(InterruptedException e){
		System.out.println("Exception " + e);
	}
}
}


public class ThreadMainClass {
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		new ChildThread("one");
		new ChildThread("two");
		try{
			for (int i = 0;i < 10; i++){
				System.out.println("Main Thread" + i);
				Thread.sleep(1000);
			}
		}catch(InterruptedException e){
			System.out.println("Exception e" + e);
		}
	}

}
