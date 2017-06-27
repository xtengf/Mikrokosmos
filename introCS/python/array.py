x = [0.30, 0.60, 0.10]
y = [0.40, 0.10, 0.50]

total = 0
for i in range(len(x)):
    total += x[i]*y[i]
print(total)

n = len(x)
print(x)
for i in range(n // 2):
    temp = x[i]
    x[i] = x[n-1-i]
    x[n-1-i] = temp
print(x)

# iterating over the elements in an array in a[] without
# referring to the indices explicity. 
total = 0
for v in y:
    total += v
average = total / len(y)
print(total)

print()
print(y)
print(sum(y))


# Create arrays in Python
a = []
for i in range(n):
    a += [0.0]
    
a = [0.0]*3

