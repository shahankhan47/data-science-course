DML - Read/Modify data. Also known as CRUD.

=========================================SELECT===================================================
SELECT * FROM BOOKS
SELECT author, title, id FROM BOOKS
SELECT author, title, id FROM BOOKS WHERE author="JK Rowling"

Operators in the WHERE clause:
=
<
>
<=
>=
<> - NOT


COUNT:
SELECT COUNT(COUNTRY) FROM COUNTRIES WHERE COUNTRY="CANADA"

DISTINCT:
SELECT DISTINCT COUNTRYTYPE FROM COUNTRIES WHERE COUNTRYTYPE="Third World"

LIMIT:
SELECT * FROM tableName LIMIT 10
SELECT * FROM BOOKS WHERE author="JK Rowling" LIMIT 5

=========================================INSERT===================================================
INSERT INTO BOOKS (id, author, title, genre, created) VALUES
    ("001", "JK Rowling", "Harry Potter", "Fantasy", 2000),
    ("001", "Rudyard Kipling", "Jungle Book", "Fantasy", 1994)

=========================================UPDATE===================================================
UPDATE BOOKS SET genre="Children" created=1995 WHERE title="Jungle Book"


=========================================DELETE===================================================
DELETE FROM BOOKS WHERE genre IN ("Romance", "Comedy")
