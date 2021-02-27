'''
Coin Sums
Problem #31

In the United Kingdom the currency is made up of pound (£) and pence (p). There are eight coins in general circulation:

1p, 2p, 5p, 10p, 20p, 50p, £1 (100p), and £2 (200p).
It is possible to make £2 in the following way:

1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
How many different ways can £2 be made using any number of coins?
'''

from tqdm import trange, tnrange, tqdm_notebook

result = list()
CSUM = 200
for p100 in trange(0,CSUM//100+1):
    for p50 in range(0,CSUM//50+1):
        for p20 in range(0,CSUM//20+1):
            for p5 in range(0,CSUM//5+1):
                for p2 in range(0,CSUM//2+1):
                    for p1 in range(0,CSUM//1+1):
                        s = 100*p100 + 50*p50 + 20*p20 + 5*p5 + 2*p2 + 1*p1
                        if s == 200:
                            result.append({100:p100, 50:p50, 20:p20, 5:p5, 2:p2, 1:p1})

for n in result:
    for i in n.keys():
        if i == 100:
            print(n)
print(len(result))
