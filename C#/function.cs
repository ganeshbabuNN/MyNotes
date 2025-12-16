using System;  
namespace FunctionExample  
{  
    class Program  
    {  
        // User defined function without return type  
        public void Show() // No Parameter  
        {  
            Console.WriteLine("This is non parameterized function");  
            // No return statement  
        }  
        // Main function, execution entry point of the program  
        static void Main(string[] args)  
        {  
            Program program = new Program(); // Creating Object  
            program.Show(); // Calling Function             
        }  
    }  
} 