DROP TABLE IF EXISTS mytable;

-- 1. We've sadly reached the end of our lessons, lets clean up by removing the Movies table 
DROP TABLE IF EXISTS movies;

-- 2. And drop the BoxOffice table as well
DROP TABLE IF EXISTS boxoffice;

/* 
    Unlike DELETE with no WHERE condition, DROP removes the whole schema (i.e. column titles as well as values). IF EXISTS used to avoid error if the table doesn't already exist, and FOREIGN KEY dependency will have to be removed from other tables.
*/