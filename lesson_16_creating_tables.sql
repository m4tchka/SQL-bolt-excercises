CREATE TABLE IF NOT EXISTS mytable (
    column DataType TableConstraint DEFAULT default_value,
    another_column DataType TableConstraint DEFAULT default_value,
    …
);

-- 1. 
/* Create a new table named Database with the following columns:
- Name A string (text) describing the name of the database
- Version A number (floating point) of the latest version of this database
- Download_count An integer count of the number of times this database was downloaded
This table has no constraints.
 */
CREATE TABLE IF NOT EXISTS database (
Name TEXT NOT NULL,
Version FLOAT NOT NULL,
Download_count INT
);
    

/* 
    TableConstraint & DEFAULT clauses are optional
    Many types and constraints (for common ones, see https://sqlbolt.com/lesson/creating_tables)
*/