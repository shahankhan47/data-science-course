Converting categorical variables into numerical values for processing.
E.g. column "fuel" has values like - gas, diesel.
pd.get_dummies(df["fuel"])

This will create 2 dummy columns gas and diesel.
If the rows has the value, that column will have 1 and all other as 0 in that row.
E.g.
Fuel
=====
gas
-----
diesel
------
gas
------
gas

Will convert to:

gas | diesel
=============
1   | 0
=============
0   | 1
=============
1   | 0
=============
1   | 0