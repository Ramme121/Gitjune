import pandas as pd

data = pd.read_csv("C:/Users/medis/Downloads/Bigmarket (2).csv")

print(data.tail())
print(data.shape)

print(data.info)

print(data[['Sales', 'Store']])

print(data.iloc[5:8])

print(data.iloc[5:8]['Sales'])

print(data[data.Sales > 40000])

print(data[(data.Sales > 40000) & (data.Store == 'B')])

print(data.sort_values('Sales', ascending=False))
print(data.sort_values('Sales')[::-1])
print(data.sort_values(['Month', 'Store']))

print(data.sort_values('Sales', ascending=False).head(3))
print(data.sort_values('Sales').tail(3))
print(data.sort_values('Sales', ascending=False)[:3])

print(data['Sales'].nlargest(3))

print(data.shape)
print(data.head())

new_data = {
    'Month': ['Jun', 'Jun', 'Jun', 'Jun', 'Jun'],
    'Store': ['F', 'G', 'H', 'I', 'J'],
    'Sales': [20000, 30000, 43000, 23000, 54000]
}

newdata = pd.DataFrame(new_data)
print(newdata)

data = pd.concat([data, newdata], ignore_index=True)
data = pd.concat([data, newdata], ignore_index=True)

state1 = ['California', 'Texas', 'New York', 'Chicago', 'Mexico']
state2 = state1 * 8
state_dict = {'State': state2}
newcol = pd.DataFrame(state_dict)
data = pd.concat([data, newcol], axis=1)
print(data.head())

print(int(data['Sales'].sum()))
print(data['Sales'].mean())

data['Sales'] = data['Sales'].replace([31037], 80000)
data['Store'] = data['Store'].replace(['A'], 'AA')

data = data.drop(0)
data = data.drop(data[data['Store'] == 'AA'].index)

print(data[data['Store'] == 'AA'])
