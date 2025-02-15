df.read_csv(url) - read csv file to a dataframe
df.read_csv(url, header=None) - if there's no header in the CSV file
df - Print whole dataframe (not recommended)
df.head(n) - 1st n rows
df.tail(n) - last n rows

df.columns = ["col1", "col2", "col3", "col4", "col5"] - to set header to a CSV file with no header
df.to_csv(path) - save dataframe to csv file


========================================================================================================
read_csv(), read_json(), read_excel(), read_sql()
to_csv(), to_json(), to_excel(), to_sql()


========================================================================================================
df.dtypes() - datatypes for all columns
df.describe() - count, mean, std, min, 25%, 50%, 75%, max for all columns
df.describe(include="all") - include all columns (even with datatype of not a number. It will contain NaN)
df.info() - concise summary of the dataframe.


========================================================================================================
df["col1"] = df["col1"] + 1 - will add 1 to all the rows of the col1 column if col1 dtype is int/float