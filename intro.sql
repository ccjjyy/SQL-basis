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







