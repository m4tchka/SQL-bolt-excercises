SELECT AGG_FUNC(column_or_expression) AS aggregate_description, …
FROM mytable
WHERE constraint_expression;

-- 1. Find the longest time that an employee has been at the studio
SELECT MAX(years_employed) FROM employees;

-- 2. For each role, find the average number of years employed by employees in that role
SELECT AVG(years_employed) as average_years_per_role, role FROM employees
GROUP BY role

-- 3. Find the total number of employee years worked in each building
SELECT SUM(years_employed) as total_years_worked, building FROM employees
GROUP BY building

/* 
    This lesson introduces aggregate functions, which are useful at finding various metrics of a column (sum, count, max etc) and returning them as 1 line, without having to do more logic in a backend. 

    GROUP BY is also introduced here, which will allow individual metrics to be returned, for each different value in the column specified.

    Without a GROUP BY, the aggregate function will calculate based on every row in the table.
*/