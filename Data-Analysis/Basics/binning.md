Grouping numerical values into separate categories.
E.g. price minimum 5151 and maximum 41315.

bins = np.linspace(min(df["price"]), max(df["price"]), 4)
group_name = ["Low", "Medium", "High"]
df["price-binned"] = pd.cut(df["price"], bins, labels=group_names, include_lowest=True)