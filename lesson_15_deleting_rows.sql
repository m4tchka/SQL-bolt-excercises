DELETE FROM mytable
WHERE condition;

-- 1. This database is getting too big, lets remove all movies that were released before 2005.
DELETE FROM movies
WHERE year < 2005;

-- 2. Andrew Stanton has also left the studio, so please remove all movies directed by him.
DELETE FROM movies 
WHERE director LIKE "andrew_s%";
DELETE FROM movies
where director = "Andrew Stanton";

/* 
    As before, use a SELECT query to test the WHERE clause to be used.
    Otherwise, just deletes all rows where the condition is true, fairly self-explanatory.
*/