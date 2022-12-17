-- main query
SELECT employee_id,
       last_name,
       salary
FROM hr.employees
WHERE salary > (
    -- sub query
    SELECT salary 
    FROM hr.employees
    WHERE last_name = 'Abel'
);


SELECT
    LAST_NAME,
    SALARY
FROM HR.EMPLOYEES
WHERE salary = (
    SELECT
        MIN(SALARY)
    FROM HR.EMPLOYEES
    WHERE department_id = 90
--    GROUP BY department_id
);
