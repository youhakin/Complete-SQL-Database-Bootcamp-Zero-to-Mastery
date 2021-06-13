/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

--SELECT * FROM employees;
SELECT extract(year from age(birth_date)) as "age" from employees
where "birth_date" < (current_date- interval '60 years')

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

--SELECT * FROM employees;
SELECT count(hire_date) as "Hired" from employees
where "hire_date" >= '1982-02-01'
and "hire_date" <= '1997-02-27'
--or
--where "hire_date" BETWEEN '1982-02-01' and '1997-02-27'

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

--SELECT * FROM employees;
SELECT count (birth_date)FROM employees
where birth_date >='1950-11-01'
and birth_date <= '1962-11-30'
--where birth_date BETWEEN '1950-11-01' and '1962-11-30';

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

--SELECT * FROM employees;
select MAX(extract(year from age((birth_date))))
as "Oldest Employee"
FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

--SELECT * FROM orders;
SELECT count(orderid) as "Amount of Orders" FROM "public"."orders"
--where orderdate >= ('2004-01-01')
--and orderdate <=('2004-01-31')
--defitnetly the WHERE here is more appealing!

where orderdate BETWEEN '2004-01-01' AND '2004-01-31';

