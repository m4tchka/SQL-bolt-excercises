UPDATE mytable
SET column = value_or_expr, 
    other_column = another_value_or_expr, 
    …
WHERE condition;

-- 1. The director for A Bug's Life is incorrect, it was actually directed by John Lasseter
UPDATE movies
SET director = "John Lasseter"
WHERE title LIKE "a_bug%";

-- 2. The year that Toy Story 2 was released is incorrect, it was actually released in 1999
UPDATE movies
SET year = 1999
WHERE id = 3;

-- 2. Both the title and director for Toy Story 8 is incorrect! The title should be "Toy Story 3" and it was directed by Lee Unkrich
UPDATE movies
SET title = "Toy Story 3",
    director = "Lee Unkrich"
WHERE title LIKE "toy_story_8";



/* 
    The incoming data must match data type of the receiving column/s, otherwise fairly self-explanatory.
    Advises users to use a SELECT * FROM table WHERE ... clause first, to test that the WHERE clause to be used to specify the rows to be updated are the correct rows.
    Best to use ID (or whatever primary key) to select if you know for sure the contents of the table ?
*/