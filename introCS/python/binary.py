import sys

n = int(sys.argv[1])

# Compute v as the largest power of 2 <= n.
v = 1
while v <= n // 2:
    v = v * 2

# Cast out powers of 2 in decreasing order.
while v > 0:
    if n < v:
        print(0)
    else:
        print(1)
        n = n -v
    v = v // 2
    
print()
