import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

class bucket{
	List<String> buck = new LinkedList<String>();
	public bucket(){
		Collections.synchronizedList(buck);
	}
	
}

class Producer extends Thread{
	bucket t;
	static int i = 0;
	public Producer(bucket t){
		this.t = t;
	}
	public void run(){
		if (t.buck.size() >= 5){
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		else
		{
			while(t.buck.size() >=5){
				t.buck.add("ele" + i);
				i ++;
				try {
					Thread.sleep(500);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
}

class Consumer extends Thread{
	bucket t;
	public Consumer(bucket t) {
	this.t = t;
	}
	public void run(){
		
		while(t.buck.size() > 0){
			
			System.out.println("element removed is " + t.buck.get(Producer.i));
			t.buck.remove(Producer.i);
			Producer.i --;
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
	
}
public class Thread_ConsumerProducer {

	public static void main(String[] args) throws InterruptedException {
		bucket bk = new bucket();
		Producer p1 = new Producer(bk);
		Consumer c1 = new Consumer(bk);
		p1.start();c1.start();
		//p1.join();c1.join();

	}

}
