

small = input("Small?[Y/N] : ")
green = input("Green?[Y/N] : ")

if small == "Y" and green == "Y":
    print("pea")
elif small == "Y" and green == "N":
    print("cherry")
elif small == "N" and green == "Y":
    print("watermelon")
else :
    print("pumpkin")

