import sys

n = int(sys.argv[1]) 

harmonic = [0.0]*(n+1)
for i in range(1, n+1):
    harmonic[i] = harmonic[i-1] + 1.0/i
print(harmonic)

MONTHS = ['', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
              'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']