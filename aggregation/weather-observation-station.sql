SELECT ROUND(SUM(lat_n), 2) AS lat, ROUND(SUM(long_w), 2) AS lon
FROM station;

SELECT TRUNCATE(SUM(lat_n), 4)
FROM station
WHERE lat_n > 38.7880
  AND lat_n < 137.2345;

SELECT TRUNCATE(MAX(lat_n), 4)
FROM station
WHERE lat_n < 137.2345;

SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n < 137.2345
ORDER BY lat_n DESC
LIMIT 1;

SELECT ROUND(MIN(lat_n), 4)
FROM station
WHERE lat_n > 38.7780;

SELECT ROUND(long_w, 4)
FROM station
WHERE lat_n > 38.7780
ORDER BY lat_n ASC
LIMIT 1;