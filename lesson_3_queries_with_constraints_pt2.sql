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
