-- T 는 타겟 테이블을 의미
-- S는 소스 테이블을 의미, T와 S는 꼭 같을 필요는 없음
-- WHEN MATCHEND THEN or WHEN NOT MATCHED 둘중 하나만 가능
-- WHEN MATCHEND THEN 일 때는 DELETE 가 필수
-- WHEN NOT MATCHEND THEN 일 때는 INSERT가 필수
-- 컬럼의 타입이 같아야함
-- UDPATE 필수
-- DELETE는 옵션
MERGE INTO HR.EMP_MERGE_TEST T 
USING (SELECT * FROM HR.EMP_MERGE_TEST) S 
ON (T.EMPLOYEE_ID = S.EMPLOYEE_ID)  
WHEN MATCHED THEN 
UPDATE SET	
    T.first_name = LOWER(S.first_name), 	
    T.last_name = LOWER(S.last_name), 
    T.email = LOWER(S.email),
    T.phone_number = S.phone_number,
    T.hire_date = S.hire_date, 
    T.job_id = S.job_id, 
    T.salary = S.salary*2, 
    T.commission_pct = S.commission_pct,
    T.manager_id = S.manager_id, 
    T.department_id = S.department_id
DELETE WHERE (S.commission_pct IS NOT NULL); 




-- DELETE 만 수행하는 방법
MERGE INTO hr.emp_merge_test T
USING (SELECT * FROM hr.emp_merge_test) S
ON (T.employee_id = S.employee_id)
WHEN MATCHED THEN
UPDATE SET
    T.first_name = T.first_name
DELETE WHERE (S.commission_pct IS NOT NULL); --DELETE WHERE 절에는 소스에 대한 조건을 기술함.



-- INSERT
-- TARGET에 없는 것을 SOURCE에서 가져와서 넣어줌
MERGE INTO HR.EMP_MERGE_TEST T
USING (SELECT * FROM HR.EMPLOYEES) S
ON (T.EMPLOYEE_ID = S.EMPLOYEE_ID)
WHEN NOT MATCHED THEN
    INSERT
    (T.employee_id,T.last_name,T.email,T.hire_date,T.job_id,T.salary,T.commission_pct)
     VALUES
    (S.employee_id,S.last_name,S.email,S.hire_date,S.job_id,S.salary,S.commission_pct)
;
