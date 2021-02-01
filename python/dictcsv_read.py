import csv
import pprint as p
with open('data.csv', 'rt') as fin:
    cin = csv.DictReader(fin, fieldnames=['#', 'id', 'first', 'last', 'address','nickname','title'])
    data = [row for row in cin]
p.pprint(data)
