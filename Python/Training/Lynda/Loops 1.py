def factorial(number):
    result = 1
    for x in range(1,number+1):
        result = result*x
    return result

in_variable = input("Enter a number to calculate the factorial of")
print factorial(in_variable)
