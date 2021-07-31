import os.path

def start():

    print("What do you want to do?")
    print("    Type a to write a file")
    print("    Type b to read a file")
    choice = input("            -")
    if choice == "a":
        create()
    elif choice == "b":
        read()
    else:
        print("Incorrect spelling of a or b\n\n")
        start()


def create():

    print()
    filename = input("What do you want the file to be called?\n")
    if os.path.isfile(filename):
        print("This file already exists")
        print("Are you sure you would like to overwrite?")
        overwrite = input("y or n")
        if overwrite == "y":
            print("File has been overwritten")
            write(filename)
        else:
            print("I will restart the program for you")
    elif not os.path.isfile(filename):
        print("The file has not yet been created")
        write(filename)
    else:
        print("Error")





def write(filename):
    print()
    print("What would you like the word to end writing to be?")
    keyword = input()
    print("What would you like in your file?")
    text = ""
    filename = open(filename, 'w')
    while text != keyword:
        filename.write(text)
        filename.write("\n")
        text = input()


def read():
    print()
    print("You are now in the reading area")
    filename = input("Please enter your file name:     -")
    if os.path.isfile(filename):
        filename = open(filename, 'r')
        print(filename.read())
    elif not os.path.isfile(filename):
        print("The file does not exist\n\n")
        start()
    else:
        print("Error")


start()