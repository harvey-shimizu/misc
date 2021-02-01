#import simplejson as json
import json
import pprint as p

#with open('sample.json', 'rt') as fin:
with open('convertjson.json', 'rt') as fin:
    menu = json.loads(fin.read())

print(menu)
print('--------------------------------------------------')
print(menu['breakfast_menu']['food'][0]['description'])
#print(menu[0]['name'])

with open('text.json', 'wt') as fout:
    #fout.write(json.dumps(p.pprint(menu, stream=fout), default=dict))
    fout.write(json.dumps(menu, default=dict))
