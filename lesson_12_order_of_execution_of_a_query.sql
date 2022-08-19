SELECT DISTINCT column, AGG_FUNC(column_or_expression), …
FROM mytable
    JOIN another_table
      ON mytable.column = another_table.column
    WHERE constraint_expression
    GROUP BY column
    HAVING constraint_expression
    ORDER BY column ASC/DESC
    LIMIT count OFFSET COUNT;

-- 1. 
SELECT director,COUNT(title) AS number_of_movies
FROM movies
GROUP BY director;

-- 2.
SELECT director,SUM(domestic_sales + international_sales) AS total_sales
FROM movies
INNER JOIN boxoffice 
    ON movies.id=boxoffice.movie_id
GROUP BY director;

/* 
    This lesson combined some of the clauses of previous lessons with the GROUP BY operator.
    As shown by the example query at the top, these queries can get quite long, but being able to specifically target certain data to return can remove a lot of logic on back/front ends, and so is absolutely worth learning.
*/