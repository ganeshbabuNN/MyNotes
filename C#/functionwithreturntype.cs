using System;  
namespace FunctionExample  
{  
    class Program  
    {  
        // User defined function  
        public string Show(string message)  
        {  
         Console.WriteLine("Inside Show Function");  
         return message;  
        }  
        // Main function, execution entry point of the program  
        static void Main(string[] args)  
        {  
            Program program = new Program();  
            string message = program.Show("Rahul Kumar");  
            Console.WriteLine("Hello "+message);  
        }  
    }  
}  