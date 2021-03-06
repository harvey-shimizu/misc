'''
Highly Divisible Triangular Number

The sequence of triangle numbers is generated by adding the natural numbers.
So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.

The first ten terms would be:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
Let us list the factors of the first seven triangle numbers:

 1: 1
 3: 1,3
 6: 1,2,3,6
10: 1,2,5,10
15: 1,3,5,15
21: 1,3,7,21
28: 1,2,4,7,14,28

We can see that 28 is the first triangle number to have over five divisors.
What is the value of the first triangle number to have over five hundred divisors?
'''
import myprime as p
import math as m
import sys
import time

# Another solution

PrimeList = p.g(1000)

def findNumDivisors2(num):
    lnum = {}
    global result
    for p in PrimeList:
        exp = 0
        if p**2 > num:
            lnum[p] = 1
            break
        while num % p == 0:
            exp += 1
            lnum[p] = exp
            num /= p
        if num == 1:
            break
#    print(lnum)
    result = lnum
    return m.prod([e+1 for p,e in lnum.items()])

#print(findNumDivisors2(36))

def findNumDivisors(num):
    global MaxLen
    global result
    lnum = []
    n = 1
    while n <= m.sqrt(num):
        if num % n == 0:
            lnum.append(n)
            lnum.append(int(num/n))
        n += 1
    if len(lnum) > MaxLen:
        MaxLen = len(lnum)
    sys.stdout.write(f"{num:>15,d} {MaxLen:5,d} T:{Limit:5,d}\r")
    sys.stdout.flush()
    result = lnum
    return len(lnum)

def devidedSummation(count):
    dnum = 0
    while dnum <= Limit:
        count += 1
        if count % 2 == 0:
            dnum = findNumDivisors2(int(count/2))*findNumDivisors(count+1)
#        dnum = findNumDivisors2(int(count/2))*findNumDivisors2(count+1)
        else:
            dnum = findNumDivisors2(int((count+1)/2))*findNumDivisors(count)
#        dnum = findNumDivisors2(int((count+1)/2))*findNumDivisors2(count)
    return count

def normalSummation(count):
    dnum = 0
    while dnum <= Limit:
        count += 1
        dnum = findNumDivisors2((count/2)*(count+1))
    return count

MaxLen = 0
count = 0
Limit = 1000
result = {}

t1 = time.time()
#count = devidedSummation(count)
count = normalSummation(count)
print(f'{count=} ":" {count*(count+1)/2:0,.0f}')
t2 = time.time()

elapse = (t2 - t1)*10**3
print (f"{elapse=:.2f}msec")
print(result)
