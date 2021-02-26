'''
Digit fifth powers
Problem #30

Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

1634 = 14 + 64 + 34 + 44
8208 = 84 + 24 + 04 + 84
9474 = 94 + 44 + 74 + 44
As 1 = 14 is not a sum it is not included.

The sum of these numbers is 1634 + 8208 + 9474 = 19316.

Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.
'''

P = 5
s = 0
for a in range(0,10):
    for b in range(0,10):
        for c in range(0,10):
            for d in range(0,10):
                for e in range(0,10):
                    x = a**P + b**P + c**P + d**P + e**P
                    if x == (10000*a+1000*b+100*c+10*d+e) and len(str(x)) == 4\
                    or x == (10000*a+1000*b+100*c+10*d+e) and len(str(x)) == 5 :
#                    if x == (10000*a+1000*b+100*c+10*d+e):
                        s += x
                        print(x)
print(f'{s=}')

P = 4
s = 0
for a in range(0,10):
    for b in range(0,10):
        for c in range(0,10):
            for d in range(0,10):
                x = a**P + b**P + c**P + d**P
                if x == (1000*a+100*b+10*c+d):
                    s += x
                    print(x)
s -= 1
print(f'{s=}')
