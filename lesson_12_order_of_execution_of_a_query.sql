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
    Execution order: 
        FROM & JOIN - Determine total working set of data & creates a temporary table containing joined table/s + columns
        WHERE - Discard rows not satisfying these conditions
        GROUP BY - Rows with same value for the specified column are grouped - leaving as many rows as unique values for that column
        HAVING - Discard groups not satisfying these conditions
        SELECT - Expressions & specific columns are now computed
        DISTINCT - Discard rows with duplicate values for DISTINCT column
        ORDER BY - Remaining rows sorted by column (aliases accepted)
        LIMIT & OFFSET - Discard rows outside of the limit / offset
        
    As shown by the example query at the top, these queries can get quite long, but being able to specifically target certain data to return can remove a lot of logic on back/front ends, and so is absolutely worth learning.
*/