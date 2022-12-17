-- 연도별 직원을 가장 적게 뽑은 연도, 직원 수 

SELECT 
    TO_CHAR(HIRE_DATE, 'YYYY'),
    COUNT(*)
FROM HR.EMPLOYEES
GROUP BY TO_CHAR(HIRE_DATE, 'YYYY')
HAVING COUNT(*) = (

    SELECT 
        MIN(COUNT(*))
    FROM HR.EMPLOYEES
    GROUP BY TO_CHAR(HIRE_DATE, 'YYYY')

)
;


-- 연도별 직원을 가장 많이 뽑은 연도, 직원 수 
-- 연도별 직원을 가장 적게 뽑은 연도, 직원 수 


SELECT
    TO_CHAR(HIRE_DATE, 'YYYY'),
    COUNT(*)
FROM HR.EMPLOYEES
GROUP BY TO_CHAR(HIRE_DATE, 'YYYY')
HAVING COUNT(*) IN (

    SELECT 
        MAX(COUNT(*))
    FROM HR.EMPLOYEES
    GROUP BY TO_CHAR(HIRE_DATE, 'YYYY')
    UNION-------------
    SELECT 
        MIN(COUNT(*))
    FROM HR.EMPLOYEES
    GROUP BY TO_CHAR(HIRE_DATE, 'YYYY')
)
;