def decorfun(fun):
    def inner():
        result = fun()
        return result*2
    return inner

@decorfun
def num():
    return 5


print(num())