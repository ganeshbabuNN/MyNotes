class MainThread1 extends Thread{
	MainThread1(){
		super("demo thread");
		System.out.println("clild thread");
		start();
		}
public void run(){
	try{
	for (int i=0;i<5;i++){
		System.out.println(i);
		Thread.sleep(1000);
	}
	}catch(Exception e) {
		System.out.println("Exception");
	
	}
	}
}


public class Thread_example2 {

	
	public static void main(String[] args) {
		new MainThread1();
		try{
			for (int i=0;i<10;i++)
			{
				System.out.println(i);
			Thread.sleep(1000);
			
			}
		}catch( Exception e){
			System.out.println(e);
			
		}

	}

}
