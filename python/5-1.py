
song = """When an eel grabs your arm, And it causes great harm, That's - a moray!"""
print(song)
#print(song.capitalize.(song.rfind("m"))
#changed_song = song.replace("m","M",song.rfind("m")) # fails what I wanted to do

#replacing_char = "m"
replacing_char = input("Input a char for capitalizing a word starting with : ")
replaced_char  = replacing_char.capitalize()
lsong = song.split()
output = []

for char in lsong:
    if char.startswith(replacing_char):
        output.append(char.replace(replacing_char,replaced_char))
    else:
        output.append(char)

print(str(" ".join(output)))
