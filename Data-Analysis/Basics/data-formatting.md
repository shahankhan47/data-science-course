Formatting data to use same format/standard in the whole project.
E.g. Converting miles per gallon to litres per 100 km for every value in a column and then renaming the column.
df[city-mpg] = 235/df["city-mpg"]
df.rename(columns={"city-mpg": "city-L/100km"}, inplace=True)

Converting datatype of a column:
df["price"] = df["price"].astype("int")