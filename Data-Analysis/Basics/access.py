from dmodule import connect

connection = connect('dbName', 'user', 'pass')

cursor = connection.cursor()

cursor.execute("select * from table")

results = cursor.fetchall()


cursor.close()
connection.close()