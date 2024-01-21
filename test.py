import time

a,b = 0,10

def test(a,b):
    a +=10
    b+=10
    return a,b

a,b = test(a,b)
print(a,b)
