=========================================ORDER BY===================================================
Sort Ascending:
select title from book ORDER BY title
Sort Descending:
select title from book ORDER BY title DESC

Can also be used to sort based on a column number:
select title, pages from book ORDER BY 2 - here 2 is the column number of the column 'pages'

=========================================GROUP BY===================================================
This will create a new column named '2' for the count:
select country, count(country) from author GROUP BY country

This will create new column named 'Count':
select country, count(country) as count from author GROUP BY country

Restrincting the grouped result using having (Having only works with GROUP BY. Different than WHERE clause):
select country, count(country) as count from author GROUP BY country having count(country) > 4