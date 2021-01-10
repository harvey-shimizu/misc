import prime_gen as p

num   = 10
count = 1
Limit = 6

# Note: if you change the limit above 10**6 below, the program cannot stop running normally.
while num < 10**Limit :
    length = len(p.g(num))
    print(f'{num:>{Limit+2},} : {length:<{Limit+2},} : {length/num:.2%}')
    count += 1
    num = num * 10
