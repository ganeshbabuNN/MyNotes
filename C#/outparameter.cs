using System;  
namespace OutParameter  
{  
    class Program  
    {  
        // User defined function  
        public void Show(out int val) // Out parameter  
        {  
            int square = 5;  
            val = square;  
            val *= val; // Manipulating value  
        }  
        // Main function, execution entry point of the program  
        static void Main(string[] args)  
        {  
            int val = 50;  
            Program program = new Program(); // Creating Object  
            Console.WriteLine("Value before passing out variable " + val);  
            program.Show(out val); // Passing out argument  
            Console.WriteLine("Value after recieving the out variable " + val);  
        }  
    }  
}  