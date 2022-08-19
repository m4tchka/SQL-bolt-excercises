SELECT column, another_column, …
FROM mytable
WHERE column IS/IS NOT NULL
AND/OR another_condition
AND/OR …;

-- 1. Find the name and role of all employees who have not been assigned to a building
SELECT name, role FROM employees
WHERE building IS NULL;

-- 2. Find the names of the buildings that hold no employees
SELECT building_name FROM buildings
LEFT JOIN employees 
    ON building_name = building 
    WHERE name IS NULL;

/* 
    Another condition that may be used in the WHERE clause is the IS (NOT) NULL, useful with LEFT/RIGHT/OUTER JOINs where multiple NULLs may be returned, to only return rows where the specified column has (no) value.
*/