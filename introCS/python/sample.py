import sys
import random
import stdarray
import stdio

m = int(sys.argv[1])  # Choose this many elements
n = int(sys.argv[2])  # from 0, 1, ..., n-1.

# Initialize array perm = [0, 1, ..., n-1].
# perm = stdarray.create1D(n, 0)
perm = [0.0]*n
for i in range(n):
    perm[i] = i
print(perm)
    
# Create a random sample of size m in perm[0..m).
for i in range(m):
    r = random.randrange(i, n)
    print(r)

    
    # Exchange perm[i] and perm[r].
    temp = perm[r]
    perm[r] = perm[i]
    perm[i] = temp
print()

# Write the results.
for i in range(m):
    print(str(perm[i]) + ' ')
# stdio.writeln()

# stdio.writeln(m)