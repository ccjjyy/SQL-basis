#------------------
# Selecting Columns
#------------------

# SELECT FROM LIMIT
SELECT name, age, country
FROM people
LIMIT 10;

# DISTINCT
SELECT DISTINCT country
FROM films;

# COUNT()
SELECT COUNT(*)
FROM reviews;

SELECT COUNT(birthdate)
FROM people;

SELECT COUNT(DISTINCT birthdate)
FROM people;

#------------------
# Filtering Results
#------------------

# WHERE
SELECT title
FROM films
WHERE title = 'Metropolis';

SELECT title
FROM films
WHERE release_year > 2000;

# AND
SELECT title
FROM films
WHERE release_year > 1994
AND release_year < 2000;

SELECT title
FROM films
WHERE release_year > 1994 AND < 2000;

SELECT *
FROM films
WHERE language = 'Spanish' 
AND release_year > 2000 
AND release_year < 2010;

# OR
SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year <= 1999)
AND (language = 'French' OR language = 'Spanish')
AND (gross > 2000000);

# BETWEEN
SELECT  title, release_year
FROM films
WHERE (release_year BETWEEN 1990 AND 2000)
AND (budget > 100000000)
AND (language = 'Spanish' OR language = 'French');

# IN
SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French');

# IS NULL 
# IS NOT NULL
SELECT COUNT(*)
FROM films
WHERE language IS NULL;

# LIKE
# NOT LIKE
# % _
SELECT name
FROM people
WHERE name LIKE '_r%';

#--------------------
# Aggregate Functions
#--------------------

# SUM() AVG() MAX() MIN()
SELECT MAX(duration)
FROM films;

SELECT AVG(gross)
FROM films
WHERE title LIKE 'A%'

# AS
SELECT title, (gross - budget) AS net_profit
FROM films;

SELECT AVG(duration / 60.0) AS avg_duration_hours
FROM films;

SELECT (COUNT(deathdate) * 100.0 / COUNT(*)) AS percentage_dead
FROM people;

#---------------------------
# Sorting Grouping and Joins
#---------------------------











