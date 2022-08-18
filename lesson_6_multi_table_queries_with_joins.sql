SELECT column, another_table_column, …
FROM mytable
INNER JOIN another_table 
    ON mytable.id = another_table.id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;

-- 1. Find the domestic and international sales for each movie
SELECT title,domestic_sales,international_sales FROM movies
INNER JOIN boxoffice 
    ON movies.id = boxoffice.movie_id;

-- 2. Show the sales numbers for each movie that did better internationally rather than domestically
SELECT title,domestic_sales,international_sales FROM movies
INNER JOIN boxoffice ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

-- 3. List all the movies by their ratings in descending order
SELECT title,rating FROM movies
INNER JOIN boxoffice ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;

-- not putting "tablename." in front of the column names in the JOIN statement still worked ? maybe will not work when id & movie_id are not 1-to-1