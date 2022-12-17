-- Top-N Queries

-- SUB QUERY
-- FETCH FIRST N ROWS ONLY (12c onward)

-- What not to do!
-- If ROWNUM is performed prior to the ORDER BY operation,
-- we get a result in potentially random data being returned.


SELECT
    ROWNUM,
    EMPLOYEE_ID,
    SALARY
    
FROM (
    SELECT
        EMPLOYEE_ID,
        SALARY
    FROM HR.EMPLOYEES
    ORDER BY SALARY ASC
)
WHERE ROWNUM <= 10
;


SELECT
    ROWNUM,
    EMPLOYEE_ID,
    SALARY
FROM HR.EMPLOYEES
ORDER BY SALARY ASC
FETCH FIRST 10 ROWS ONLY;


