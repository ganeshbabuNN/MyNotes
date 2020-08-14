using System;  
   public class Account  
    {  
        public int id;   
        public String name;  
        public static float rateOfInterest;  
        public Account(int id, String name)  
        {  
            this.id = id;  
            this.name = name;  
        }  
        static Account()  
        {  
            rateOfInterest = 9.5f;  
        }  
        public void display()  
        {  
            Console.WriteLine(id + " " + name+" "+rateOfInterest);  
        }  
   }  
   class TestEmployee{  
       public static void Main(string[] args)  
        {  
            Account a1 = new Account(101, "Sonoo");  
            Account a2 = new Account(102, "Mahesh");  
            a1.display();  
            a2.display();  
  
        }  
    }  