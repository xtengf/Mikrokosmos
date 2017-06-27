import sys

n = int(sys.argv[1])

factor = 2
while factor*factor <= n:
    while (n % factor) == 0:
        n //= factor
        print(str(factor) + ' ')
    factor += 1
    
if n > 1:
    print(n)
print()