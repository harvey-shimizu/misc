
#def print_data(data, start=0, end=100):
def print_data(data, *, start=0, end=100):
    for value in (data[start:end]):
        print(value)

data = ['a', 'b', 'c', 'd', 'e', 'f']
print_data(data)

print('------')
print_data(data, start=4)
print('------')
print_data(data, 4)
print('------')
print_data(data, end=2)
