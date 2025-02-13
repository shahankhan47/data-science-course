select column_1 from table
    where column_2 = (select MAX(column_2) from TABLE)

=========================================Evaluating Aggregate FUnctions===================================================
Invalid Syntax:
select * from employees where salary > AVG(salary)
Usually built-in functions cannot always evaluate in the where clause.

Valid Syntax:
select * from employees where salary > (select AVG(salary) from employees);

=========================================In list of columns===================================================
Invalid Syntax:
select id, salary, AVG(salary) as avg_salary from employees;

Valid Syntax:
select id, salary, (select AVG(salary) from employees) as avg_salary from employees;

=========================================In from clause===================================================
select * from (select id, fname, lname, dept from employees) as emp_column