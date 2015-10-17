def average(A):
    result = 0
    for x in A:
        result = result+x
    return result/len(A)

numbers = [10,20,30]
print average(numbers)
