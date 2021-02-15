
import time
import math
import prime_gen

"""
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
"""

def findPrimeFactor(n):
    prime = []
    for p in prime_gen.g(int(math.sqrt(n))):
        if p*p > n : break
        while n%p == 0:
            prime.append(p)
            n //= p
    if n > 1:
        prime.append(n)
    return max(prime)

n = 600851475143
print(findPrimeFactor(n))

