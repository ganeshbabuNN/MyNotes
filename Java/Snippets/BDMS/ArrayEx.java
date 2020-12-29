
public class ArrayEx {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	int numbers[] = {1,2,3,4};
	//int avg;
	int sum = 0;
	for (int i = 0;i<numbers.length;i++){
		sum = sum + numbers[i];
	}
	System.out.println("\n number of values in array:" + numbers.length);
	System.out.println("\n average is " + (float)sum /numbers.length); 
 	numbers[numbers.length + 1] = 20;
	System.out.println("\n now the length is " + numbers.length);
	}
	// TODO Auto-generated method 
}
//	Number num = new Number() {
//		
//		@Override
//		public long longValue() {
//			// TODO Auto-generated method stub
//			return 0;
//		}
//		
//		@Override
//		public int intValue() {
//			// TODO Auto-generated method stub
//			return 0;
//		}
//		
//		@Override
//		public float floatValue() {
//			// TODO Auto-generated method stub
//			return 0;
//		}
//		
//		@Override
//		public double doubleValue() {
//			// TODO Auto-generated method stub
//			return 0;
//		}
//	};
//}
