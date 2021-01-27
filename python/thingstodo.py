

#small = input("Small?[Y/N] : ")
#green = input("Green?[Y/N] : ")

#if small == "Y" and green == "Y":
#    #print("pea")
#elif small == "Y" and green == "N":
#    #print("cherry")
#elif small == "N" and green == "Y":
#    #print("watermelon")
#else :
#    #print("pumpkin")

def good():
    mylist = ['Harry', 'Ron', 'Hermione']
    return mylist

#print(good())

def get_odds():
    for odd in range(1,10):
        if odd % 2 == 1:
           yield odd

#print(get_odds())

count = 1
for n in get_odds():
    if count == 3:
        #print(n)
        pass
    count += 1

def test(func):
    def new_function(*args, **kwargs):
        #print('start')
        #print(func(*args, **kwargs))
        #print('end')
        pass
    return new_function

dec_return = test(good)
dec_return()


#words = ['aaa', 'bbb', 'ccc', 'DDD']
#for word in words:
#    if word.isupper():
#        raise OopsException(word)

#class OopsException(Exception):
#    if Exception.__call__:
#        #print('Error happens!')
#    pass

def test_exception():
    ''' This is a ducument test'''
    while True:
        num = input('Please number[quit:q]: ')
        if num == 'q':
            break
        elif not num.isdigit():
            #print('This is string!')
            continue
        elif 4 < len(str(num)):
             raise OopsException(num)
#            #print('Too big number!')
#            conjxtinue

#test_exception()

#print('shimizu'.upper())

class Dog():
    def __init__(self, name):
        self.name = name
    def get_name(self):
        #print('I\'m', self.name)
        pass
    def Bow(self):
        pass
        #print('Bow! Bow!')

class Labrador(Dog):
    def __init__(self, name, ring):
        super().__init__(name)
        self.ring = ring
    def get_ringcolor(self):
        pass
        #print('I have a', self.ring, 'ring.')
    def Bow(self):
        pass
        #print('Whooo!')

dog = Labrador('Mari','red')
#print('dog.name = ', dog.name)
dog.get_name()
dog.get_ringcolor()
dog.Bow()


class PrettyMixin():
    def dump(self):
        import pprint
        #pprint.pprint(vars(self))
        pass

class Thing(PrettyMixin):
    pass

t = Thing()
t.name = "Nyarlathotep"
t.feature = "ichor"
t.age = "eldritch"
t.dump()

class Myclass():
    pass

my = Myclass()
my.age = 45
my.name = "Shimizu Hideaki"
my.address = "harvey_shimizu@moriousa.com"


class Parts():
    count = 0
    def __init__(self, name):
        self.name = name
        Parts.count += 1
    def __eq__(self, Parts2):
        return self.name.lower() == Parts2.name.lower()
    def __str__(self):
        return self.name
    def dic(self):
        return vars(self)
    @classmethod
    def kids(cls):
        #print('Parts instances have', cls.count, 'little object')
        pass
    @staticmethod
    def commertial():
        pass
        #print('This is a static method.')

#p = Parts("Sheet")
p = Parts("ネジ")
p2 = Parts("板金")
p.cost = 12232
p.vendor = "Nishiyama"

for index, value in p.dic().items():
    pass
    #print(index, ':', value)
p.vendor = "Cameron"
#print(p.vendor)

Parts.kids()
Parts.commertial()

#print(p == p2)
#print(p)
#print(p2)

from collections import namedtuple
Duck = namedtuple('Duck', 'bill tail')
duck = Duck('wide orange', 'long')
#print(duck)
#print(duck.bill)
#print(duck.tail)

#print('----------------------------')

#10.1
class Thing():
    pass

example1 = Thing()
example2 = Thing()

#print(Thing)
#print(example1)
#print(example2)

#10.2
class Things2():
    def __init__(self, letter):
        self.letter = letter

a = Things2('abc')
#print(a.letter)

#10.3
class Things3():
    def __init__(self, letter):
        self.letter = letter

#print(Things3('xyx').letter)

#10.4
class Element():
    def __init__(self, name, symbol, number):
        self._name = name
        self._symbol = symbol
        self._number = number
    def __str__(self):
        return self._name + ' ' + self._symbol + ' ' + str(self._number)
    @property
    def name(self):
        return self._name
    @property
    def symbol(self):
        return self._symbol
    @property
    def number(self):
        return self._number
    def dump(self):
        return vars(self)

a = Element('Hydrogen', 'H', 1)
#print(a.name, a.symbol, a.number)
#
##10.5
atom = {'name':'Hydrogen', 'symbol':'H', 'number':1}
hydrogen = Element(atom['name'], atom['symbol'], atom['number'])
#print(hydrogen.name, hydrogen.symbol, hydrogen.number)
#
##10.6
#print(hydrogen.dump())
#
##10.7
#print(hydrogen)
#
#10.8
#print(hydrogen.name)
#print(hydrogen.symbol)
#print(hydrogen.number)

hydrogen._name = 'hydrogen'
#print(hydrogen._name)

#10.9
class Bear():
    def eats(self):
        return 'berries'

class Rabbit():
    def eats(self):
        return 'clover'

class Octothorpe():
    def eats(self):
        return 'campers'

bear = Bear()
rabbit = Rabbit()
octo = Octothorpe()
animals = [bear, rabbit, octo]

for obj in animals:
    #print(obj.eats())
    pass

#10.10

class Laser():
    def does(self):
        return 'disintegrate'

class Claw():
    def does(self):
        return 'crush'

class SmartPhone():
    def does(self):
        return 'ring'

class Robot():
    def does(self, obj):
        return obj.does()

laser = Laser()
claw  = Claw()
smart = SmartPhone()
things = [laser, claw, smart]

for obj in things:
    #print(Robot().does(obj))
    pass

#print('----------------------------')

#from fast import pick as pk

from choices import fast as f, advice as ad
#print('Let\'s go to', f.pick())
#print('Should we take out?', ad.give())

#print('----------------------------')

from collections import defaultdict, Counter
food_counter = defaultdict(int)
for food in ['spam', 'spam', 'eggs', 'spam']:
    food_counter[food] += 1

for food, count in food_counter.items():
    #print(food, count)
    pass

food = ['spam', 'spam', 'eggs', 'spam']
count = Counter(food)
#print(count)

from pprint import pprint

atom = {'Hydrogen':1, 'Helium':2, 'Lithium':3, 'Beryllium':4, 'Boron':5, 'Carbon':6, 'Oxygen':8, 'Hydrogen':1}
count = Counter(atom)
#pprint(atom)
#pprint(count)

import itertools
from pprint import pprint
n = 1
for item in itertools.accumulate(range(1,11)):
    #print(n, item)
    n += 1

n = 1
for item in itertools.accumulate(range(1,9), lambda x,nn : nn/x):
    #print(n, item)
    n += 1

num = 0
for n in itertools.cycle(range(1,10)):
    if num > 100:
        break
    #print(n, num)
    num += n

from random import choice
#print(choice([12, 9, 32, 'becon', 'pai']))
#print(choice(range(1000)))

#print('-------------------------------')

alphabet = 'abcdefghijklmnopqrstuvwxyz'

plain = { alphabet[n] : n for n in range(0,26) }
#plain = {'b':2, 'a':1, 'c':3}
for n in plain:
    #print(n)
    pass

fancy = []
for key, value in plain.items():
    fancy.append((key, value))
#print(fancy)

from collections import OrderedDict as od
#fancy = od([('b',2), ('a',1), ('c',3)])
od_fancy = od(fancy)
for n in od_fancy:
    #print(n)
    pass

from collections import defaultdict

dict_of_list = defaultdict(list)
dict_of_list['a'] = 'something for a'
#print(dict_of_list['a'])
#print(dict_of_list['b'])

#print(chr(0x0001F618))

print('------------------------')

import re
youpattern = re.compile('you')
if result := youpattern.match('young man'):
    pass
    #print(result.group())

youpattern = re.compile('man')
if result := youpattern.match('young man'):
    #print(result.group())
    pass
else:
    #print('nothing to match')
    pass

youpattern = re.compile('man')
if result := youpattern.search('young_man'):
    #print(result.group())
    pass

youpattern = re.compile('秀明')
if result := youpattern.search('清水 秀明'):
    #print(result.group())
    pass

youpattern = re.compile('n.?')
if result := youpattern.findall('young_man'):
    pass
    #print(result)
    #print('Found', len(result), 'matches')

source = 'Young Frankenstein. He has been living for over 1,000 years.'
youpattern = re.split('n', source)
#print(youpattern)

youpattern = re.sub('n', '?', source)
#print(youpattern)

import string as s
p = s.printable
print(p[0:len(p)-1], end='')
print(len(p))

print('\d')
print(re.findall('\d', p))
print(len(re.findall('\d', p)))
print('\D')
print(re.findall('\D', p))
print(len(re.findall('\D', p)))
print('\w')
print(re.findall('\w', p))
print(len(re.findall('\w', p)))
print('\W')
print(re.findall('\W', p))
print(len(re.findall('\W', p)))
print('\s')
print(re.findall('\s', p))
print(len(re.findall('\s', p)))
print('\S')
print(re.findall('\S', p))
print(len(re.findall('\S', p)))
print('\\b')
print(re.findall('\b', p))
print(len(re.findall('\b', p)))
print('\B')
print(re.findall('\B', p))
print(len(re.findall('\B', p)))

m = re.search(r'(?P<WORD>a.*n).*(?P<LATTER>o.*z)', p)
p2 = 'abcd[' + m.group('WORD') + ']' + 'abcd[adehi]efg'
print(p2)
m = re.findall(r'(\[.*\](?=abc))', p2)
print('FINDALL')
print(m)
m = re.search(r'(?P<WORD>a.*n).*(?P<LATTER>A.*?(?=\W.*))', p)
print('WORD')
print(m.group('WORD'))
print(m.group('LATTER'))

#print(chr(0x0660)) #ARABIC-INDIC DIGIT ZERO
#print(chr(0x0967)) #DEVANAGARI DIGIT ONE
print(chr(0x1F618)) #Face throwing a Kiss.
#digit = "1,000,+\*(10(98)),3,44.332.\u00ea\U00002460\U00000660\U00000967"
#print(digit)
#print(re.findall('\d', digit))

print('----------------------------')
import unicodedata as uc

#12.1
mystery = '\U0001f984'
#value = uc.lookup(uc.name(mystery))
print(mystery)
print(uc.name(mystery))

#12.2
pop_bytes = mystery.encode('utf-8')
print(pop_bytes)

#12.3
pop_string = pop_bytes.decode('utf-8')
print(pop_string)

#12.4
import re

#fp = open('mammoth.txt', 'r')
fp = open('36068.txt.utf-8', 'r')
poem = fp.read()

#12.5
pattern = re.findall(r'\bc\w*\b', poem)
#pattern = re.findall(r'\bs\w+\b', poem)
print(len(pattern))
pprint(set(pattern))
print(len(set(pattern)))

#12.6
#pattern = re.findall(r'\bc\w{3,4}\b', poem)
pattern = re.findall(r'\bc\w{3,4}\b', poem)
print(len(pattern))
pprint(set(pattern))
print(len(set(pattern)))

#12.7
pattern = re.findall(r'\b\w*r\b', poem)
print(len(pattern))
pprint(set(pattern))
print(len(set(pattern)))

#12.8
pattern = re.findall(r'\b\w*[a|i|e|u|o]{3}\w*\b', poem)
print(len(pattern))
print(set(pattern))
print(len(set(pattern)))

#12.9
import binascii
#hex = b'47 49 46 38 39 61 0100 0100 800000000000ffffff21f9' +\
hex = b'47494638396101000100800000000000ffffff21f9' +\
      b'0401000000002c000000000100010000020144003b'
gif = binascii.unhexlify(hex)
print(gif)

import struct
#print(gif[0:10])
# Little Endian and 16-bit integer beginning at byte offset 6.
# Extracting a height and width size from a GIF image.
width, height = struct.unpack('<6x2H', gif[0:10])
print('Valid GIF, width', width, 'height', height)

print('------------------------')
from datetime import date
from datetime import timedelta

now = date.today()
print(now.isoformat())

oneday = timedelta(days=1)
tomorrow = now + oneday
print(tomorrow.isoformat())

