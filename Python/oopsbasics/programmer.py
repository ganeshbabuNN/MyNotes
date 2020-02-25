class Programmer:
    
    def __init__(self,n,sal,techs):
        self.name=n
        self.salary=sal
        self.technologies=techs
        
    
    def setName(self,n):
        self.name=n
        
    def getName(self):
        return self.name
    
    def setSalary(self,sal):
        self.salary = sal
    
    def getSalary(self):
        return self.salary
    
    def setTechnologies(self,techs):
        self.technologies = techs
    
    def getTechnologies(self):
        return self.technologies
    
    
p1 = Programmer("Bharath",11000,["Java",".Net","Python"])
print(p1.getName())
p1.setName("John")
p1.setSalary(10000)
p1.setTechnologies(["Java","Hibernate","Spring","Python"])


print(p1.getSalary())
print(p1.getTechnologies())