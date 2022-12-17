-- 1union2minus-3 
-- ((1+2)-3)
-- union 합집합
-- minus 차집합
-- union all 합집합+교집합
SELECT 
    employee_id,
    job_id,
    department_id
FROM hr.employees 
WHERE department_id =90
UNION------------
SELECT 
    employee_id,
    job_id,
    department_id
FROM hr.job_history
WHERE department_id =90
MINUS------------
SELECT 
    employee_id, 
    job_id,
    department_id
FROM hr.employees 
WHERE department_id = 90
;