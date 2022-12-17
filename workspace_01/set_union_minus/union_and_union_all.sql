-- 현재 데이터와 과거 데이터를 비교할 때 주로 사용
-- union하는 튜플의 columns 타입과 개수가 일치해야함
SELECT
    employee_id,
    job_id,
    'HR.EMPLOYEES'
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 90
UNION--------------
SELECT
    employee_id,
    job_id,
    'hr.job_history'
FROM hr.job_history
WHERE DEPARTMENT_ID = 90
;

SELECT
    employee_id,
    job_id,
    'HR.EMPLOYEES'
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 90
UNION--------------
SELECT
    employee_id,
    job_id,
    'HR.EMPLOYEES'
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 90
;

-- 중복된 튜플도 모두 표시함
-- 튜플의 모든 컬럼값이 일치한 것을 중복이라함
SELECT
    employee_id,
    job_id,
    'HR.EMPLOYEES'
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 90
UNION ALL--------------
SELECT
    employee_id,
    job_id,
    'HR.EMPLOYEES'
FROM HR.EMPLOYEES
WHERE DEPARTMENT_ID = 90
;