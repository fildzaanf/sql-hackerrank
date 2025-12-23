-- employee names
SELECT name
FROM employee
ORDER BY name ASC;

-- employee salaries
SELECT name 
FROM employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC;