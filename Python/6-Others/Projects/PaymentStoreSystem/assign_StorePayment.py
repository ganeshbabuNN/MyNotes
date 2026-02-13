#Requirement.
# Create a Payment Processing System for a store and follow OOP.
# -The system should enable store to add cash(online) in their system using CreditCard or UPI
# -The system should also have functionality to refund to customers
# -The system should have functionality to show balance
# -The system should have functionality to check history

# Terminal : uv run python main.py
# Welcome to Payment system:
# Press 1 for Add cash to the system
# Press 2 to refund the money
# Press 3 check balance
# Press 4 to check the transcation
# Press 5 to exit the system

# if user press 1 : Want to use credit card or UPI : 1 of C, 2 UPI
# if user press 2 : enter amount to refund : subtract the amount from system credit
# if user press 3 :
# if user press 4 : show the history but with good format in terminal

# The code should be robust, running in while loop, should handle user input and type casting, 
# should have exception handling + All OOPS concept + modules & package creation is (optional)

#Next Plans are in place to implement core OOP principles, including Inheritance, Encapsulation, Abstraction, Polymorphism, and Exception Handling (try-catch).

import os
import time
from datetime import datetime

class StorePayment:
    def __init__(self):
        self.balance = 0
        self.refund = 0 
        self.history =[]
        self.menuScreen() 
        
    def clear_screen(self):
        # Clears the terminal for a fresh look
        os.system('cls' if os.name == 'nt' else 'clear')

    def draw_line(self):
        print("─" * 50)

    def get_input(self,prompt,options=None,numeric_only=False):
        while True:
            #get the input and remove leading/trailing spaces
            user_input=input(f"{prompt}: ").strip()
            
            #check if this blank
            if not user_input:
                print("  >> Error: Input cannot be blank!")
                continue

            #check if  is used only numeric only
            if numeric_only and not user_input.isdigit():
                print("  >> Error: Please enter numbers only (no letters/symbols)!")
                continue

            #check the option again
            if options and user_input not in options:
                print(f"  >> Error: Invalid selection! choose from {options}")
                continue

            return user_input


    def menuScreen(self):
        self.clear_screen()
        self.draw_line()
        print(f"{'STORE PAYMENT SYSTEM':^50}")
        self.draw_line()        
        print("Welcome to Store Payment System")
        print("  [1] Add Cash to System")
        print("  [2] Refund Money")
        print("  [3] Check Balance")
        print("  [4] Check Transactions")
        print("  [5] Exit Systems")
        self.draw_line()
        while True:
            choice = self.get_input("Enter option (1-5): ",options=['1','2','3','4','5'],numeric_only=True) 
            opt = int(choice)
            if(opt==1):
                self.addCash() 
            elif(opt==2):
                self.refundMoney()
            elif(opt==3):
                self.checkBalance()
            elif(opt==4):
                self.checkTransaction()
            elif(opt==5):
                self.exitSystem()
                break
            else:
                print(">> Error: Invalid choice. Please enter a number from 1 to 5.")
                opt = int(input("Enter the choice: "))   

    def addCash(self):
        self.draw_line()
        print(f"{'ADDING CASH':^50}")
        self.draw_line()
        print("  Methods: 1. Credit Card | 2. UPI")
        method=self.get_input("  Enter your payment option: ",numeric_only=True)
        method=int(method)
        if(method==1):
            card=int(self.get_input("  Enter last 4 digits: ",numeric_only=True))
            if card!=4:
                print("  >>Error: Must be exactly 4 digits!")
                card=self.get_input("  Enter last 4 digits: ",numeric_only=True)                

            cash=self.get_input("  Enter amount: ",numeric_only=True)
            cash=int(cash)
            self.balance+=cash
            print(f"\n >> SUCCESS: Added ${cash} via card (...{card})")
            self.addTransaction("ADDED CASH OF VIA CARD ",cash)
        elif(method==2):
            upid = self.get_input("  Enter UPI ID: ")
            cash=self.get_input("  Enter amout: ",numeric_only=True)
            cash=int(cash)
            self.balance+=cash
            print(f"\n >> SUCCESS: Added ${cash} via UPI (...{upid})")
            self.addTransaction("ADDED CASH OF VIA UPI ",cash)
        else:
            print(">> Error: Invalid choice. Please enter a number from 1 to 5.")            
        self.draw_line()
        input("\nPress Enter to return to menu...")
        self.menuScreen() 

    def refundMoney(self):
        self.draw_line()
        print(f"{'REFUNDING CASH':^50}")
        self.draw_line()
        refund=self.get_input("  ENTER REFUND AMOUNT: ",numeric_only=True)
        self.balance=self.balance-int(refund)
        print(f"\n >> SUCCESS: REFUNDED ${refund} TO YOUR ACCOUNT WITHIN 24HRs")
        self.addTransaction("REFUNDED AMOUT ",refund)
        self.draw_line()
        input("\nPress Enter to return to menu...")
        self.menuScreen()
        
    def checkBalance(self):
        self.draw_line()
        print(f"{'CHECKING BALANCE':^50}")
        self.draw_line()
        print(f"\n >> BALANCE IN YOUR ACCOUNT ${self.balance}")
        self.draw_line()
        input("\nPress Enter to return to menu...")
        self.menuScreen()

    def addTransaction(self,arg1,arg2):
        t= time.time()
        formatted_time = datetime.fromtimestamp(t).strftime('%Y-%m-%d %H:%M:%S')
        self.history.append(f"{formatted_time} : {arg1} : ${arg2}")
        # To print it line by line:

    def checkTransaction(self):
        self.draw_line()
        print(f"{'TRANSACTION HISTORY':^50}")
        for entry in self.history:
            print(entry)            
        self.draw_line()
        input("\nPress Enter to return to menu...")
        self.menuScreen()
        
    def exitSystem(self):
        message = "B Y E"
        # This loop draws a "shutter" closing effect
        for i in range(5, 0, -1):
            print("=" * (i * 10))  # Draws a line that gets shorter
            print(f"{message:^{i * 10}}") # Centers "BYE" in that line
            time.sleep(0.2)
        
        print("\n[System Offline]")
        os._exit(1)    
     
    
t1 = StorePayment()