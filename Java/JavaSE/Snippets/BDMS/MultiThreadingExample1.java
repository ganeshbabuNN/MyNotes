
public class MultiThreadingExample1 implements Runnable {
	
	String tname;
	private Thread t;
	int i = 0;
	public MultiThreadingExample1(String tname){
		this.tname = tname;
		System.out.println("Creating Thread " + this.tname);
	}
	
	public  void run() {
		System.out.println("Running Thread" + this.tname);
		try{
			for( i = 0;i < 5;i++){
				System.out.println("Thread:" + tname + ":" + i);
				Thread.sleep(1000000);
				if (tname.equals("Thread-2")){
					Thread.sleep(10);
				}
			}
		}catch (InterruptedException e){
			System.out.println("Thread:" + tname + "Inturrepted");
			
		}
		System.out.println("thread" + tname + "exiting");
		
		
	}
	
	public void start(){
		System.out.println("Starting thread name" + tname);
		
		if ( t == null){
			t = new Thread(this,tname);
			t.start();
		}
	
	}
	public static void main(String[] args) {
		
		MultiThreadingExample1 R1 = new MultiThreadingExample1( "Thread-1");
	      R1.start();
	      
	      MultiThreadingExample1 R2 = new MultiThreadingExample1( "Thread-2");
	      R2.start();
	}

	
}
