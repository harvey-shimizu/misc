import csv
villanins = [
        ['Doctor', 'No'],
        ['Rose', 'Klebb'],
        ['Mister', 'Big'],
        ['Auric', 'Goldfinger'],
        ['Ernst', 'Blofeld'],
        ]
with open('villanins', 'wt') as fout:
    csvout = csv.writer(fout)
    csvout.writerows(villanins)
