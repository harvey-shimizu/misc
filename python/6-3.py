
import os
import random

guess_me = 5
#number = 1
#guess_me = random.randint(0,10)
#number = random.randint(0,10)

for number in range(10):
    if number < guess_me:
        print("too low")
    elif number > guess_me:
        print("opps")
        break
    else:
        print("found it!")
        break
