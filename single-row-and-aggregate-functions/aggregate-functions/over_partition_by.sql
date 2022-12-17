-- OVER (PARTITION BY column_name) : GROUP BY column_name 결과를 aggregate가 아니라 single row로 나타냄
-- GROUP BY 와 마찬가지로 WHERE 절 이후에 처리됨

SELECT manager_id, hire_date, salary,
       FLOOR(AVG(salary) OVER (PARTITION BY hire_date )) AS "AVG"
FROM employees
ORDER BY hire_date;

SELECT manager_id, hire_date, salary,
       FLOOR(AVG(salary) OVER (PARTITION BY hire_date )) AS "AVG" -- (2)
FROM employees
where manager_id in (101, 205) -- (1)
ORDER BY hire_date;


--

SELECT department_id, job_id,
       AVG(salary) OVER (PARTITION BY department_id, job_id) AS "AVG_SAL",
       count(*) OVER (PARTITION BY department_id, job_id) AS "persons"
FROM hr.employees
WHERE department_id=30;


SELECT department_id, job_id,
       AVG(salary) AS "AVG_SAL",
       count(*) AS "persons"
FROM hr.employees
WHERE department_id=30
GROUP BY department_id, job_id ;