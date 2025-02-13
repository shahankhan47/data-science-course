String Pattern:
select firstname from author where firstname like 'R%' - % to define missing letters

Ranges:
select title, pages from books where pages >= 290 and pages <= 300

Ranges:
select title, pages from books where pages between 290 and 300

Sets of values:
select firstname, lastname from author where country in ('AU', 'BR', 'IN', 'FR')