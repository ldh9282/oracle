-- 싱글 row와 aggregate function 을 같이 쓰는 방법
-- 서브쿼리를 테이블로 사용해서 inner join하는 방법
-- 싱글로우를 사용하는 테이블과 그룹함수를 하는 테이블을 조인할 수 있음

-- 비슷한 방법으로 over partition by가 있지만 차이점은
-- over partition by는 group by having 절을 통해 그룹함수 조건을 체크할 수 없지만
-- 이 방법은 group by having절을 서브쿼리에서 사용할 수 있음

SELECT
    E1.LAST_NAME,
    E1.FIRST_NAME,
    E1.SALARY,
    E1.DEPARTMENT_ID,
    E3.SAL_AVG
    
FROM HR.EMPLOYEES E1
INNER JOIN (
    SELECT
        E2.DEPARTMENT_ID,
        AVG(E2.SALARY) AS "SAL_AVG"
    FROM HR.EMPLOYEES E2
    GROUP BY E2.DEPARTMENT_ID
) E3
ON E1.DEPARTMENT_ID = E3.DEPARTMENT_ID
WHERE E1.SALARY = E3.SAL_AVG;

----------------------------------------------------------------
SELECT
    E1.LAST_NAME,
    E1.FIRST_NAME,
    E1.SALARY,
    E1.DEPARTMENT_ID,
    E2.SAL_AVG
    
FROM HR.EMPLOYEES E1
INNER JOIN (
    SELECT
        DEPARTMENT_ID,
        AVG(SALARY) AS "SAL_AVG"
    FROM HR.EMPLOYEES 
    GROUP BY DEPARTMENT_ID
) E2
ON E1.DEPARTMENT_ID = E2.DEPARTMENT_ID
WHERE E1.SALARY = E2.SAL_AVG;