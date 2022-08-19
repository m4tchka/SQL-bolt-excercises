SELECT column, another_column, …
FROM mytable
INNER/LEFT/RIGHT/FULL JOIN another_table 
    ON mytable.id = another_table.matching_id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;

-- 1. Find the list of all buildings that have employees
SELECT DISTINCT building_name FROM buildings
LFET JOIN employees 
    ON building_name = building
WHERE building = building_name;

-- Or just SELECT DISTINCT building FROM employees;

-- 2. Find the list of all buildings and their capacity
SELECT * FROM buildings;

-- 3. List all buildings and the distinct employee roles in each building (including empty buildings)
SELECT DISTINCT building_name, role FROM buildings
LEFT JOIN employees 
    ON building_name = building;