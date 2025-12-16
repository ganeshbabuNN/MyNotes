using System;  
namespace AccessSpecifiers  
{  
    class PrivateTest  
    {  
        private string name = "Shantosh Kumar";  
        private void Msg(string msg)  
        {  
            Console.WriteLine("Hello " + msg);  
        }  
    }  
    class Program  
    {  
        static void Main(string[] args)  
        {  
            PrivateTest privateTest = new PrivateTest();  
            // Accessing private variable  
            Console.WriteLine("Hello " + privateTest.name);  
            // Accessing private function  
            privateTest.Msg("Peter Decosta");  
        }  
    }  
}  