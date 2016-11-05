num1 = input("Enter a number")
num2 = input("Enter a Second number")

try:
    print num1/num2
except ZeroDivisionError:
    print "Dividing by Zero is not allowed!"

raise ZeroDivisionError("You Divided By Zero!")
