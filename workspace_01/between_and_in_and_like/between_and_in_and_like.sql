SELECT last_name, salary
FROM hr.employees
WHERE salary BETWEEN 3000 AND 5000
ORDER BY salary DESC;

SELECT last_name, salary
FROM hr.employees
WHERE salary IN (3000, 4000, 4800);

-- % := *
SELECT last_name, salary
FROM hr.employees
WHERE last_name LIKE 'A%';

-- _ := ONE CHAR
SELECT last_name, salary
FROM hr.employees
WHERE last_name LIKE 'A___';