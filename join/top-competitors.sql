SELECT h.hacker_id, h.name
FROM Hackers h
INNER JOIN submissions s 
        ON h.hacker_id = s.hacker_id
INNER JOIN challenges c 
        ON s.challenge_id = c.challenge_id
INNER JOIN difficulty d 
        ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(DISTINCT s.challenge_id) > 1
ORDER BY COUNT(DISTINCT s.challenge_id) DESC, h.hacker_id ASC;
