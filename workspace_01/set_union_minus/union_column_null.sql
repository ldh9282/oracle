-- union을 하려면 튜플의 컬럼타입과 개수가 일치해야함
-- 동일한 컬럼 없을 경우 null값을 타입변환해서 채워줄 수 있음

SELECT
	DEPARTMENT_ID,
	TO_NUMBER(NULL) AS "LOCATION_ID",
	HIRE_DATE
FROM HR.EMPLOYEES
UNION---------------
SELECT
	DEPARTMENT_ID,
	LOCATION_ID,
	TO_DATE(NULL) AS "HIRE_DATE"
FROM HR.DEPARTMENTS
;
