-- average population
SELECT ctr.continent, FLOOR(AVG(ct.population))
FROM country ctr
INNER JOIN city ct 
        ON ctr.code = ct.countrycode
GROUP BY ctr.continent;

-- population census
SELECT SUM(ct.population) AS sum_city_population
FROM city ct 
INNER JOIN country ctr 
        ON ct.countrycode = ctr.code
WHERE ctr.continent = 'Asia';

-- african cities
SELECT ct.name
FROM city ct
INNER JOIN country ctr 
        ON ct.countrycode = ctr.code
WHERE ctr.continent = 'Africa';