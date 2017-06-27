import random
import sys
import stdarray
import stdio

n = int(sys.argv[1])

count = 0
collectedCount = 0
isCollected = [False]*n

while collectedCount < n:
    value = random.randrange(0,n)
    count += 1
    if not isCollected[value]:
        collectedCount += 1
        isCollected[value] = True

print(count)