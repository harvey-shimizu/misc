'''
Champernowne's constant
Problem #40

An irrational decimal fraction is created by concatenating the positive integers:

0.123456789101112131415161718192021...

It can be seen that the 12th digit of the fractional part is 1.
If dn represents the nth digit of the fractional part, find the value of the following expression.

d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

'''

def getNthDigital(ord):
    dig = len(str(ord))
    if dig == 1:
        return ord
    return (ord - 10**(dig-1))//dig + getNthDigital(10**(dig-1)-1) + 1
#    return getNthDigital(10**(dig-1)-1) + 1 + getNthDigital(10**(dig-2)-1) + 1

def getOneDigital(ord):
    dig = str(getNthDigital(ord))
    return dig
#    return dig[ord%len(dig)]

print(getOneDigital(110))

#s = 1
#for pow in range(7):
#    print(getOneDigital(10**pow))
#    s *= getOneDigital(1**pow)
