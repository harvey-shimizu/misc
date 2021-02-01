import csv
import string as s
import random as r
import pprint as p

#print(s.ascii_letters)
#print(r.choice(s.ascii_letters[-26:-1:]))
#print(r.choices(s.ascii_letters, weights=None, cum_weights=None, k=10))

def exclusive_id(data):
    new_id = str(int(r.randint(100000,999999)))
    flag = 1
    while flag:
        for line in data:
            if new_id in line[1]:
                new_id = str(int(r.randint(100000,999999)))
                flag = -1
                break
        if flag != -1:
            flag = 0
            return new_id
        else:
            flag = 1

data = []
for mm in range(0,1000):
    tmp = []
    tmp.append(str(mm))
#    tmp.append(str(int(r.randint(10000,99999))))
    tmp.append(exclusive_id(data))
    for x in range(0,5):
        m = r.randint(3,10)
        tmp.append((''.join(r.choices(s.ascii_letters, weights=None, cum_weights=None, k=m)).lower().capitalize()))
    data.append(tmp)
print(data)
print(len(data))

with open('data.csv', 'wt') as fout:
    csvout = csv.writer(fout)
    csvout.writerows(data)



