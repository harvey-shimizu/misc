
import random

#guess_me = 7
#number = 1
guess_me = random.randint(0,10)
number = random.randint(0,10)

while True :
    if number < guess_me:
        print("too low")
    elif number > guess_me:
        print("opps")
        break
    else:
        print("found it!")
        break
    number += 1
