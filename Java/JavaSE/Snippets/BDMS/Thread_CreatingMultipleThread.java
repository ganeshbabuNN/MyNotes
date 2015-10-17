


public class Thread_CreatingMultipleThread implements Runnable {
	
	String name;
	Thread t;
	
	private Thread_CreatingMultipleThread(String name){
		this.name = name;
		t = new Thread(this,name);
		System.out.println("New thread " + t.getName());
		t.start();
	}
	
	@Override
	public void run() {
	try{
		for(int i = 0; i < 10;i++){
			System.out.println(name + ":" + i);
			Thread.sleep(500);
		}
	}catch (InterruptedException e){
		System.out.println("Interrupted exception caught");
	}
	System.out.println(name + " Exiting");
		
	}
	
	
	public static void main(String[] args) throws InterruptedException {
		Thread_CreatingMultipleThread aa = new Thread_CreatingMultipleThread("Bhuvan");
		Thread_CreatingMultipleThread ab = new Thread_CreatingMultipleThread("Bhuvan1");
		Thread_CreatingMultipleThread ac = new Thread_CreatingMultipleThread("Bhuvan2");
		Thread k = Thread.currentThread();
		k.setName("Main Thread Calling");
		System.out.println("Thread k" + k.getName());
		try{
			k.sleep(1000);
			aa.t.join();ab.t.join();ac.t.join();
			
		}catch (InterruptedException e){
			System.out.println("Interrupted exception caught");
		}
		
		System.out.println("Main thread exiting");

	}

	
	

}
