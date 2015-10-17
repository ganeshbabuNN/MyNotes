class vehicle:
    wheels = 4
    def __init__(self):
        print "vehicle"
    def calcVelocity(self,x):
        return 3*x+10

class Car(vehicle):
    def __init__(self):
        self.speed = 10




examplecar = Car()
print examplecar.speed
print examplecar.calcVelocity(20)
print examplecar.wheels

