INSERT INTO mytable
(column, another_column, …)
VALUES (value_or_expr, another_value_or_expr, …),
      (value_or_expr_2, another_value_or_expr_2, …),
      …;

-- 1. Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
INSERT INTO movies VALUES (4, "Toy Story 4", "John Lasseter", 2005, 90);

-- 2. Toy Story 4 has been released to critical acclaim! It had a rating of 8.7, and made 340 million domestically and 270 million internationally. Add the record to the BoxOffice table.
INSERT INTO boxoffice VALUES (4,8.7,340000000,270000000);

/* 
    The first lesson where queries actually change the database. The first parenthese containing columns that the values correspond to is optional, if you specify a value for every column. If you aren't giving a value for every column, then which columns that are getting data inserted need to be specified
*/