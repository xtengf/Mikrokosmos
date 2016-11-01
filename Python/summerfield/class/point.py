import Shape
import math

a = Shape.Point()
# print "repr(a)"
repr(a)

print("a")  # a
print(a)    # (0, 0)

b = Shape.Point(3, 4)
repr(b)
print(b)    # (3, 4)
print(repr(b))  # Point(3, 4) 

#b.distance_from_origin()
b.x = -19
str(b) 
print(str(b))   # (-19, 4)
print(str(a))   # (0, 0)

a == b, a != b
print(a == b, a != b)   # False True