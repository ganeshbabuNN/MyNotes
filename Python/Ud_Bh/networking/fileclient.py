import socket

s = socket.socket()

s.connect(("localhost",6767))

fileName = input("Enter a file name:")

s.send(fileName.encode())

content = s.recv(1024)


while content:
    print("Received: ",content.decode())
    msg = s.recv(1024)


s.close()