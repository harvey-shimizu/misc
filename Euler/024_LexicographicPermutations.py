'''
Lexicographic Permutations
Problem #24

A permutation is an ordered arrangement of objects.
For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order.
The lexicographic permutations of 0, 1 and 2 are:

012   021   102   120   201   210

What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?
'''

import math
import string as s

T = 1000000

def lexNumth(n, t):
    if t > math.factorial(len(n)):
        print('an invalid Nth')
        return None
    print(genLexiconPattern(n, t))

def genLexiconPattern(n, t):
    num = int(t)
    fn = len(n) - 1
    out = []
    while fn > 1:
        permu = num // math.factorial(fn)
        out.append(permu)
        num = num % math.factorial(fn)
        fn -= 1
    return out

lexNumth('0123456789', T)

