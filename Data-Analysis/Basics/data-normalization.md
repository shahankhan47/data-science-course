Approaches for normalization:

1. Simple Feature Scaling: x-new = x-old/x-max
df["length"] = df["length"] / df["length].max()

2. Min-Max: x-new = x-old - x-min / x-max - x-min
df["length"] = (df["length"] - df["length"].min()) / (df["length"].max() - df["length"].min())

3. Z-Score: x-new = x-old - mean / std
df["length"] = (df["length"] - df["length"].mean()) / df["length"].std()