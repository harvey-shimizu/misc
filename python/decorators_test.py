def document_in(func):
    def new_function(*args, **kwargs):
        print('Running function:', func.__name__)
        print('Positional arguments:', args)
        print('Keyword argument:', kwargs)
        result = func(*args, **kwargs)
        print('Result:', result)
        return result
    return new_function

@document_in
def add_ints(a, b):
    return a+b

print(add_ints(3, 5))

#cooler_add_ints = document_in(add_ints)
#cooler_add_ints(3, 5)

def amazing():
    ''' This is the amazing function. Want to see it again??'''
    print('This function is named :', amazing.__name__)
    print('And its docstring is:', amazing.__doc__)

amazing()

def flatten(lol):
    for item in lol:
        if isinstance(item, list):
            yield from flatten(item)
        else:
            yield item

loll = [1,2,3,[4,5,[6,7,[8,9,[[10,[11]]]]]],12,[13,14]]
lol = list(flatten(loll))

while True:
    value = input('Position [q to quite]? ')
    if value == 'q':
        break

    try:
        position = int(value)
        print(lol[position])
    except IndexError as err:
        print('Bad index:', position)
    except Exception as other:
        print('Something else broke:', other)

