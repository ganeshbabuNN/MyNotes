using System;  
namespace AccessSpecifiers  
{  
    class PublicTest  
    {  
        public string name = "Shantosh Kumar";  
        public void Msg(string msg)  
        {  
            Console.WriteLine("Hello " + msg);  
        }  
    }  
    class Program  
    {  
        static void Main(string[] args)  
        {  
            PublicTest publicTest = new PublicTest();  
            // Accessing public variable  
            Console.WriteLine("Hello " + publicTest.name);  
            // Accessing public function  
            publicTest.Msg("Peter Decosta");  
        }  
    }  
}  