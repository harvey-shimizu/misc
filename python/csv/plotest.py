import pandas as pd
import matplotlib.pyplot as plt

airline = pd.read_csv('air_quality_no2.csv', index_col=0, parse_dates=True)
print(airline)
airline.plot()
plt.show()

