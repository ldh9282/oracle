-- not in multi_rows_subquery 
-- 서브쿼리에 Null 반환 시 아무런 결과도 나타내지 못함
-- not in (서브쿼리결과: null) 시 아무런 결과를 내지 못함
-- 서브쿼리에서 case로 null check해야함

SELECT
    employee_id,
    last_name,
    salary
FROM hr.employees
WHERE salary NOT IN (

    SELECT
        CASE WHEN AVG(salary) IS NULL THEN 0
             ELSE AVG(salary)
        END         
    FROM hr.employees
    WHERE department_id IN (10, 20, 30)
    GROUP BY department_id 

)
;