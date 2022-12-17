-- https://www.javatpoint.com/oracle-having-clause

SELECT department_id, SUM(salary), count(*), AVG(salary) 
FROM hr.employees
GROUP BY department_id --(1)
HAVING SUM(salary) > 7000; --(2)


SELECT department_id, SUM(salary), count(*), AVG(salary)
FROM hr.employees
WHERE job_id LIKE '%REP%' --(1)
GROUP BY department_id --(2)
HAVING SUM(salary) > 7000; --(3)
 
