-- 1. Find all the Toy Story movies
SELECT * FROM movies 
WHERE title LIKE "toy story%";

-- 2. Find all the movies directed by John Lasseter
SELECT * FROM movies 
WHERE director LIKE "john lasseter";

-- 3. Find all the movies (and director) not directed by John Lasseter
SELECT * FROM movies 
WHERE director NOT LIKE "john lasseter";

-- 4. Find all the WALL-* movies
SELECT * FROM movies 
WHERE title LIKE "wall-_";

-- Other ways to do 4.
    -- title = "WALL-_"
    -- title LIKE "wall%"

/* 
    STRING operators for WHERE clauses are introduced here: 
    (NB: the string that each row is checked against (i.e. what goes after the operator) MUST BE IN QUOTES)
        =           being exact match (and != as its opposite)
        LIKE        being case-insenstive match (and NOT LIKE)
            _           being a SINGLE character wildcard (with LIKE/ NOT LIKE) - DOES NOT WORK if there is no character in that slot
            %           being an ANY LENGTH wildcard (with LIKE/ NOT LIKE)
        IN ()       being a list of things to match to (basically an OR condition) 
*/