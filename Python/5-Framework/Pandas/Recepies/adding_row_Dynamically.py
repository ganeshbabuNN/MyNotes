#using list
cols = ['c1', 'c2', 'c3']
lst = []
for a in range(2):
    lst.append([1, 2, 3])
df1 = pd.DataFrame(lst, columns=cols)
df1

#Create the dataframe with an index and then add to it
cols = ['c1', 'c2', 'c3']
df2 = pd.DataFrame(columns=cols, index=range(2))
for a in range(2):
    df2.loc[a].c1 = 4
    df2.loc[a].c2 = 5
    df2.loc[a].c3 = 6
df2

#If you want to add to an existing dataframe, you could use either method above and then append the df's together (with or without the index):
df3 = df2.append(df1, ignore_index=True)
df3

#you can also create a list of dictionary entries and append those as in the answer above.
lst_dict = []
for a in range(2):
    lst_dict.append({'c1':2, 'c2':2, 'c3': 3})
df4 = df1.append(lst_dict)
df4

#Using the dict(zip(cols, vals)))
lst_dict = []
for a in range(2):
    vals = [7, 8, 9]
    lst_dict.append(dict(zip(cols, vals)))
df5 = df1.append(lst_dict)

#compact and efficient way would be perhapcols = ['frame', 'count']
N = 4
dat = pd.DataFrame(columns = cols)
for i in range(N):
    dat = dat.append({'frame': str(i), 'count':i},ignore_index=True)