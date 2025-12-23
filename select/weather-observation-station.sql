-- weather observation station 1
SELECT DISTINCT city 
FROM station 
WHERE id % 2 = 0;

-- weather observation station 2
SELECT COUNT(city) - COUNT(DISTINCT city) 
FROM station;

-- weather observation station 3
SELECT city, LENGTH(city)
FROM (
    SELECT city 
    FROM station
    ORDER BY LENGTH(city) ASC, city
    LIMIT 1
) AS shortest_city

UNION ALL

SELECT city, LENGTH(city) 
FROM (
    SELECT city
    FROM station
    ORDER BY LENGTH(city) DESC, city
    LIMIT 1
) AS longest_city

-- weather observation station 4
SELECT DISTINCT city 
FROM station
WHERE city LIKE 'a%'
   OR city LIKE 'i%'
   OR city LIKE 'u%'
   OR city LIKE 'e%'
   OR city LIKE 'o%';

-- weather observation station 5
SELECT DISTINCT city 
FROM station
WHERE city LIKE '%a'
   OR city LIKE '%i'
   OR city LIKE '%u'
   OR city LIKE '%e'
   OR city LIKE '%o';

-- weather observation station 6
SELECT city
FROM station
WHERE LEFT(city,1) IN ('a','e','i','o','u')
  AND RIGHT(city,1) IN ('a','e','i','o','u');

-- weather observation station 7
SELECT DISTINCT city
FROM station
WHERE city NOT LIKE 'a%'
  AND city NOT LIKE 'i%'
  AND city NOT LIKE 'u%'
  AND city NOT LIKE 'e%'
  AND city NOT LIKE 'o%';

-- weather observation station 8
SELECT DISTINCT city
FROM station 
WHERE RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- weather observation station 9
SELECT DISTINCT city 
FROM station
WHERE LEFT(city, 1) NOT IN ('a', 'i', 'u', 'e', 'o') OR
      RIGHT(city, 1) NOT IN ('a', 'i', 'u', 'e', 'o');

-- weather observation station 10
SELECT DISTINCT city 
FROM station
WHERE LEFT(city, 1) NOT IN ('a', 'i', 'u', 'e', 'o') AND
      RIGHT(city, 1) NOT IN ('a', 'i', 'u', 'e', 'o');
