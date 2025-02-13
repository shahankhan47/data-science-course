Ways to access multiple tables in same query:
- Sub queries
- Implicit join
- JOIN operators (INNER, OUTER, etc)

Refer to multiple-tables.png file to see the data.

=========================================Sub Queries===================================================
1. Retrieve all employees for which the department id exists in the departments table:
select * from employees
    where dep_id IN (select dept_id_dep from departments);

2. Retreive employees from a specific location. Location data exists in department table:
select * from employees
    where dep_id IN (select dept_id_dep from departments where loc_id = "L0002");

3. Retrieve all departments where the employees have salary > 70000
select * from departments where dept_id_dep IN (
    select dep_id from employees where salary > 70000
)

=========================================Implicit Join===================================================
1. select * from employees, departments - does a full join
- Every row in first table is joined with every row in second table.
- Result will have more rows than in both tables.

2. select * from employees e, departments d 
    where e.dep_id = d.dept_id_dep;

3. select e.emp_id, d.dep_name from 
    employees e, departments d 
    where e.dep_id = d.dept_id_dep 