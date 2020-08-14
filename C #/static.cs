using System;  
   public class Account  
    {  
        public int accno;   
        public String name;  
        public static float rateOfInterest=8.8f;  
        public Account(int accno, String name)  
        {  
            this.accno = accno;  
            this.name = name;  
        }  
          
        public void display()  
        {  
            Console.WriteLine(accno + " " + name + " " + rateOfInterest);  
        }  
   }  
   class TestAccount{  
       public static void Main(string[] args)  
        {  
         Account a1 = new Account(101, "Sonoo");  
            Account a2 = new Account(102, "Mahesh");  
            a1.display();  
            a2.display();  
  
        }  
    }  