SELECT group_by_column, AGG_FUNC(column_expression) AS aggregate_result_alias, …
FROM mytable
WHERE condition
GROUP BY column
HAVING group_condition;

-- 1. Find the number of Artists in the studio (without a HAVING clause)
SELECT COUNT(role) AS number_of_artists FROM employees
WHERE role = "Artist";

-- 2. Find the number of Employees of each role in the studio
SELECT role, COUNT(*) as number_of_employees
FROM employees
GROUP BY "role"; 

-- 3. Find the total number of years employed by all Engineers
SELECT role, SUM(years_employed) as total_years
FROM employees
GROUP BY role
HAVING role LIKE "engineer";

/* 
    Following from the previous lesson, this one introduced the HAVINg clause. Used in addition to the GROUP BY clause, this condition is similar to WHERE, but applied to the different groups created from the GROUP BY statement, allowing selection of certain groups
*/