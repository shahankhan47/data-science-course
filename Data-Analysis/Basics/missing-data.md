1. Check with the data collection source if the missing data can be obtained.
OR
2. Drop the missing value. (Drop the variable or the data entry)
OR
3. Replace the missing data (less accurate, not recommended)
    - Replace with an average (of similar datapoints)
    - Replace with a frequency
    - Replace based on other functions
4. Leave it as missing data
==================================================DROP==================================================================================
df.dropna(subset=["column"], axis=0, inplace=True)
    axis = 0 drop a row, axis=1 drop entire column
    inplace = True replace the existing df. If False, you can store it in another variable and analyze using that.

==================================================REPLACE===============================================================================
df["column"].replace(missing_value, new_value)
E.g.
mean = df["column"].mean()
df["column"].replace(np.nan, mean) - replace all NaN values with mean of the column