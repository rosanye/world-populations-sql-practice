-- This is the first query

SELECT DISTINCT year from population_years;

-- Add your additional queries below:

-- Gabon Populations
 
SELECT * FROM population_years
WHERE country = "Gabon"
ORDER BY population DESC;

-- Smallest countries by population in 2005

SELECT country FROM population_years
WHERE population IS NOT NULL
AND year = 2005
ORDER BY population ASC
LIMIT 10;

-- Countries with > 100M population in 2010

SELECT DISTINCT country FROM population_years
WHERE population > 100
AND year = 2010;

-- Countries containing "islands"

SELECT DISTINCT country FROM population_years
WHERE country LIKE "%islands%";

-- Difference in population in Indonesia in 2000 and 2010

SELECT year, population FROM population_years
WHERE country = 'Indonesia'
AND year = 2000
OR country = 'Indonesia'
AND year = 2010;