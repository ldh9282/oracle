--모든 반환값_표현식은 데이터유형이 동일해야 합니다.
-- CASE WHEN 조건1 THEN 반환값_표현식1 
--      WHEN 조건2 THEN 반환값_표현식2 
--      ...
--      WHEN 조건n THEN 반환값_표현식n
--      ELSE 기본_반환값_표현식
-- END

SELECT employee_id,
       salary,
       commission_pct,
       CASE WHEN commission_pct IS NULL THEN salary * (1 + 0) * 12
            ELSE salary * (1 + commission_pct) * 12
       END  AS "QUALIFIED_SALARY"
FROM hr.employees
ORDER BY commission_pct ASC NULLS LAST
FETCH FIRST 45 ROWS ONLY;


SELECT LAST_NAME,
       SALARY,
       CASE WHEN SALARY < 5000 THEN 'Low'
            WHEN SALARY < 10000 THEN 'Medium'
            WHEN SALARY < 20000 THEN 'Good'
            ELSE 'Excellent'
       END  AS "QUALIFIED_SALARY"
FROM HR.EMPLOYEES
ORDER BY SALARY ASC;