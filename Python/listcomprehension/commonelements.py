a=[2,4,6,8]
b=[1,2,3,4]
result=[]

'''for i in a:
    if i in b:
        result.append(i)'''
        
result=[i for i in a if i in b]        
        
print(result)
    