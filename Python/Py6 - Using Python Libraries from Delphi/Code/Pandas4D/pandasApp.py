import numpy as np
import matplotlib
import matplotlib.pyplot as plt
matplotlib.use("Agg")
# Import pandas
import pandas as pd

# Example 01: Read the dataset
df = pd.read_csv("..\Pandas4D\Churn_Modelling.csv")
## See the data
print(df)

# Example 02: Print the data shape
print(f"Size of the data: %s" % (df.shape,))

# Example 03: Print the data columns
print(f"All columns: %s" % (df.columns))

# Example 04: Drop 4 columns
df.drop(['RowNumber', 'CustomerId', 'Surname', 'CreditScore'],
        axis=1,
        inplace=True)

print(f"Size of the data (after dropping 4 columns): %s" % (df.shape,))

# Example 05: Select particular columns
df_spec = pd.read_csv("..\Pandas4D\Churn_Modelling.csv", usecols=['Gender', 'Age', 'Tenure', 'Balance'])
print("Select particular columns:")
print(df_spec.head())

# Example 06: Reading a part of the dataframe
df_partial = pd.read_csv("..\Pandas4D\Churn_Modelling.csv", nrows=5000)
print("Only read the first 5000 rows of data:")
print(f"Size: %s" % (df_partial.shape,))

# Example 07: Select rows from the end of the file
df_partialEnd = pd.read_csv("..\Pandas4D\Churn_Modelling.csv", skiprows=5000)
print("Only read the last 5000 rows of data:")
print(f"Size: %s" % (df_partialEnd.shape,))

# Example 08: Draw a small sample to work
df_sample = df.sample(n=1000)
print("Draw a small sample to work (n = 1000):")
print(f"Size: %s" % (df_sample.shape,))
## Draw a small sample to work using the ratio of the sample size to the whole dataframe size
print("Draw a small sample to work (20% of total dataset):")
df_sample2 = df.sample(frac=0.2)
print(f"Size: %s" % (df_sample2.shape,))

# Example 09: Check the missing values
print("Total of missing values for each column:")
print(df.isna().sum())

# Example 10: Adding missing values using loc and iloc
## Create 20 random indices to select
missing_index = np.random.randint(10000, size=20)
## We will use these indices to change some values as np.nan (missing value)
df.loc[missing_index, ['Balance','Geography']] = np.nan
## Let’s try another example using the indices instead of labels (select the last column)
df.iloc[missing_index, -1] = np.nan

print("Total of missing values for each column (after we artificially create missing values):")
print(df.isna().sum())

# Example 11: Filling missing values
## See the "Geography" column
print(df["Geography"].value_counts())
## Fill NA using the most common value (mode)
mode = df['Geography'].value_counts().index[0]
df['Geography'].fillna(value=mode, inplace=True)
## Fill NA using the mean value
avg = df['Balance'].mean()
df['Balance'].fillna(value=avg, inplace=True)

print("Total of missing values for each column (after we filled them):")
print(df.isna().sum())

# Example 12: Dropping missing values
df.dropna(axis=0, how='any', inplace=True)

print("Total of missing values for each column (after we dropped them):")
print(df.isna().sum())

# Example 13: Selecting rows based on conditions
france_churn = df[(df.Geography == 'France') & (df.Exited == 1)]
print("Total of churned customers who live in France:")
print(france_churn.Geography.value_counts())

'''
# Example 14: Describing the conditions with query
df2 = df.query('80000 < Balance < 100000')
print("Querying the dataset, based on 80000 < Balance < 100000:")
print(df2)
print(f"Size: %s" % (df2.shape,))
## Plotting a histogram of the balance column
df2['Balance'].plot(kind='hist', figsize=(8,5))
plt.savefig("pandasPlot.jpg")
'''

# Example 15: Visualize bivariate relationships between combinations of variables using scatter plot matrix
pd.plotting.scatter_matrix(df, diagonal='kde', figsize=(12,12))
plt.savefig("pandasPlot.jpg")

# Example 16: Describing the conditions with isin
print("Show the data, where 'Tenure' is 10 years:")
print(df[df['Tenure'].isin([10])])

# Example 17: Groupby function
print("Group the rows based on the geography-gender combinations and then calculate the average churn rate for each group:")
print(df[['Geography','Gender','Exited']].groupby(['Geography','Gender']).mean())
