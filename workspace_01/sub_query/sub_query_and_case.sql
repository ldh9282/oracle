-- null check

SELECT last_name, job_id, SALARY
FROM hr.employees
WHERE CASE WHEN department_id IS NULL THEN 0
           ELSE department_id END = (
        
    SELECT CASE WHEN department_id IS NULL THEN 0
                ELSE department_id END
    FROM hr.employees
    WHERE employee_id = 178
);

-- same result

SELECT last_name, job_id, SALARY
FROM hr.employees
WHERE NVL(department_id,0) = (
     SELECT NVL(department_id,0) FROM hr.employees
     WHERE employee_id=178
);
