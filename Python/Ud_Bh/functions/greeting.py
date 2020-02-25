def display(name):
    def message():
        return "Hello "
    result = message()+name
    return result

print(display("Bharath"))
