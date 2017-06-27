import sys

n = int(sys.argv[1])

for i in range(1, n+1):
    # Write the ith line.
    for j in range(1, n+1):
        # Write the jth entry in the ith line.
        if (i % j == 0) or (j % i == 0):
            print('* ')
        else:
            print(' ')
    println(i)