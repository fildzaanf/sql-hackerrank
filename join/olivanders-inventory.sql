SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands w 
INNER JOIN wands_property wp 
        ON w.code = wp.code
WHERE wp.is_evil = 0
      AND w.coins_needed = (
          SELECT MIN(w2.coins_needed)
          FROM wands w2
          INNER JOIN wands_property wp2
                  ON w2.code = wp2.code
          WHERE wp2.is_evil = 0
                AND w2.power = w.power
                AND wp2.age = wp.age
      )
ORDER BY power DESC, age DESC;