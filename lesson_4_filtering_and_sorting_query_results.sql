-- 1. List all directors of Pixar movies (alphabetically), without duplicates
SELECT DISTINCT director FROM movies 
ORDER BY director ASC;

-- 2. List the last four Pixar movies released (ordered from most recent to least)
SELECT title FROM movies 
ORDER BY year DESC 
LIMIT 4;

-- 3. List the first five Pixar movies sorted alphabetically
SELECT title FROM movies 
ORDER BY title ASC 
LIMIT 5;

-- 4. List the next five Pixar movies sorted alphabetically
SELECT title FROM movies 
ORDER BY title ASC 
LIMIT 5 OFFSET 5;

/* 
    The ORDER BY is used to sort the data alphanumerically by the values of a column, in  ascending/ descending order, before returning it. 
    LIMIT is used to show a set number of columns from the database, by default, from the first entries downwards, but the OFFSET can also be used to specify from where exactly to start counting the rows to be returned.
*/