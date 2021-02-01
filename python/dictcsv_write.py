import csv
import pprint as p
with open('data.csv', 'rt') as fin:
#    cin = csv.DictReader(fin, fieldnames=['#', 'id', 'first', 'last', 'address','nickname','title'])
    cin = csv.DictReader(fin)
    data = [row for row in cin]

#p.pprint(data)

with open('data.csv', 'wt') as fout:
    cout = csv.DictWriter(fout, ['#', 'id', 'first', 'last', 'address','nickname','title'])
    cout.writeheader()
    cout.writerows(data)
