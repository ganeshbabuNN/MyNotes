import pickle

f = open("student.dat","rb")
obj = pickle.load(f)
obj.display()
f.close()