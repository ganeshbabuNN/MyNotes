using System;      
public class IfExample  
    {  
       public static void Main(string[] args)  
        {  
            Console.WriteLine("Enter a number:");  
            int num = Convert.ToInt32(Console.ReadLine());  
  
            if (num % 2 == 0)  
            {  
                Console.WriteLine("It is even number");  
            }  
            else  
            {  
                Console.WriteLine("It is odd number");  
            }  
              
        }  
    }