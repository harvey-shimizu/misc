import random as r

secret = r.randint(1,10)

mflag = False
while mflag != True:
    guess = int(input("Please input a number[1-10] : "))
    if (guess >= 1) and (guess <= 10):
        if secret > guess :
            print("too low")
        elif secret < guess :
            print("too high")
        else :
            print("just right")
            mflag = True
    else:
        print("the invaild number")
        mflag = True

