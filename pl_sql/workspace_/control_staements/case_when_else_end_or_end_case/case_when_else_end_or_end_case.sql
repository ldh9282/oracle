-- CASE structure allows nesting.
-- The documentation says "The CASE statement is more readable and more efficient.
-- So, when possible, rewrite lengthy IF-THEN-ELSIF statements as CASE statements."

DECLARE

V_JOB_CODE VARCHAR2(10) := NULL;
V_SALARY_INCREASE NUMBER;

BEGIN

V_SALARY_INCREASE := 
        CASE 
	WHEN V_JOB_CODE = 'SA_MAN' THEN 0.2
            WHEN V_JOB_CODE = 'SA_REP' THEN 0.3
            ELSE 0 
        END;

DBMS_OUTPUT.PUT_LINE('Your salary increase is : ' || V_SALARY_INCREASE);

END;


--

DECLARE

v_job_code VARCHAR2(10) := 'IT_PROG';
v_salary_increase NUMBER;

BEGIN

v_salary_increase := 
    CASE 
        WHEN v_job_code = 'SA_MAN' THEN 0.2
        WHEN v_job_code IN ('SA_REP', 'IT_PROG') THEN 0.3
        ELSE 0 
    END;

dbms_output.put_line('Your salary increase is : ' || v_salary_increase);

END;


--

DECLARE

v_job_code VARCHAR2(10) := 'IT_PROG';
v_salary_increase NUMBER;
V_DEPARTMENT VARCHAR2(10) := 'IT';

BEGIN

v_salary_increase := 
    CASE 
       WHEN v_job_code = 'SA_MAN' THEN 0.2
       WHEN v_job_code IN ('SA_REP', 'IT_PROG') THEN 0.3
       WHEN v_job_code = 'IT_PROG' AND V_DEPARTMENT = 'IT' THEN 0.2
       ELSE 0 
    END;

dbms_output.put_line('Your salary increase is : ' || v_salary_increase);

END;


-- 단순 값 대입이 아니라
-- CASE를 IF문과 동일하게 사용하려면
-- END CASE; 를 해줘야함
-- 그렇게 할 시 IF문과 동일하게 중첩문도 작성가능하며
-- STATEMENTS를 여러개 작성도 가능



DECLARE

v_job_code VARCHAR2(10) := NULL;
v_salary_increase NUMBER;
V_DEPARTMENT VARCHAR2(10) := 'IT';

BEGIN


    CASE 
       WHEN v_job_code = 'SA_MAN' THEN
        v_salary_increase := 0.2;
       WHEN v_job_code IN ('SA_REP', 'IT_PROG') THEN
        v_salary_increase := 0.3;
       WHEN v_job_code = 'IT_PROG' AND V_DEPARTMENT = 'IT' THEN
        v_salary_increase := 0.2;
       ELSE
        CASE
            WHEN V_JOB_CODE IS NULL THEN
                v_salary_increase := NULL;
            ELSE
                v_salary_increase := 0;
        END CASE;
    END CASE;

dbms_output.put_line('Your salary increase is : ' || v_salary_increase);

END;
/





