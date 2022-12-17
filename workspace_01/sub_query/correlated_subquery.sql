-- 상관관계 서브쿼리
-- Correlated Subquery
-- 메인 쿼리에서 상관관계 서브쿼리가 사용되면, 메인 쿼리의 후보 행 수만큼,
-- 서브쿼리가 반복적으로 처리됩니다. 

-- WHERE절에 상관관계 서브쿼리가 처리되는 과정은 다음과 같습니다.
-- 메인 쿼리의 E1.DEPARTMENT_ID 로부터 서브쿼리로 값이 전달됩니다.
-- 전달받은 값을 이용하여, 서브쿼리가 실행되고, 메인 쿼리로 전달할 값이 구해집니다.
-- 서브쿼리로부터 전달받은 값을 이용하여, WHERE절의 조건이 평가됩니다.

SELECT 
    E1.EMPLOYEE_ID,
    E1.SALARY,
    E1.DEPARTMENT_ID
FROM HR.EMPLOYEES E1
WHERE E1.SALARY > ( -- (3)
    SELECT
        AVG(E2.SALARY) -- (2)
    FROM HR.EMPLOYEES E2
    WHERE E2.DEPARTMENT_ID = E1.DEPARTMENT_ID -- (1)
)
;


SELECT 
    EMPLOYEE_ID,
    SALARY,
    DEPARTMENT_ID
FROM HR.EMPLOYEES E
WHERE SALARY > ( -- (3)
    SELECT
        AVG(SALARY) -- (2)
    FROM HR.EMPLOYEES 
    WHERE DEPARTMENT_ID = E.DEPARTMENT_ID -- (1)
)
;