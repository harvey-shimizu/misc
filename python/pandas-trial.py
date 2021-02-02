import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import string as s


ss = pd.Series([1, 3, 5, np.nan, 6, 8])
print(ss)
dates = pd.date_range('20210301', periods=7)
print(dates)
#df = pd.DataFrame(np.random.randn(6, 4), index=dates, colums=list(s.ascii_lowercase()))
df = pd.DataFrame(np.random.randn(7, 7), index=dates, columns=list('ABCDEFG'))
print(df)

df2 = pd.DataFrame(
        {
            'A': 1.0,
            #'B': pd.Timestamp('20210201'),
            'B': pd.date_range('20210301', periods=4),
#            'B': range(4),
            'C': pd.Series(1, index=list(range(4)), dtype='int64'),
            'D': np.array([3] * 4, dtype='int64'),
            'E': pd.Categorical(['test', 'train', 'test', 'train']),
            'F': 'foo',
        }
)
print(df2)
print(df2.dtypes)

data = [n for n in range(5)]
data = {'a':1, 'b':2, 'c':3, 'd':4, 'e':5}
data = {'sa':1, 'sb':2, 'sc':3, 'sd':4, 'se':5}
print(data)
index = list("ABCDE")
ss = pd.Series(data, index=index)
ss = pd.Series(data)
print(ss)
print(ss.index)

#print(ss.columnes) There is no columns because it has only one array.
#print(pd.Series(np.random.randn(5)))

print(range(5))
ss = pd.Series(range(5))
print(ss)
print('\nss[0]\n', ss[0], '\nss[:3]\n', ss[:3], '\nss[ss > ss.median()]\n', ss[ss > ss.median()], '\nss[[4,3,1]]\n', ss[[4,3,1]])
print(ss.array)

print('--------------------------------------------------')
print('DataFrame Demo')
d = {
        'one' : pd.Series([1.0, 2.0, 3.0], index=['a', 'b', 'c']),
        'two' : pd.Series([1.0, 2.0, 3.0, 4.0], index=['a', 'b', 'c', 'd']),
        'three' : [pd.DataFrame({'x': pd.Series(['A','B','C','D'], index=['a','b','c','d'])}),\
                   pd.DataFrame({'y': pd.Series([1,2,3,4], index=['a','b','c','d'])}),\
                   pd.DataFrame({'z': pd.Series([1,2,3,4], index=['a','b','c','d'])}),\
                   pd.DataFrame({'o': pd.Series([1,2,3,4], index=['a','b','c','d'])}) \
                  ],
    }

df = pd.DataFrame(d)
print(df)
print(df.dtypes)
print(df['three'])
print(df.index)
print(df.columns)

d = {'one':{'a':1, 'b':3}, 'two':{'a':2, 'b':4}}
print(pd.DataFrame(d))
