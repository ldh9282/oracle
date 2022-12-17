CREATE SEQUENCE HR.EMPLOYEES_ID_SEQ
START WITH 207
INCREMENT BY 1;



-- Each time the sequence is called, the value is incremented.
-- But in same execution statement we have the same value even if the sequence is called multiple times.

DECLARE 

V_EMPLOYEE_ID PLS_INTEGER := 0;

BEGIN

    FOR i IN 1..10 LOOP
        INSERT INTO EMPLOYEES_COPY
            (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, HIRE_DATE, JOB_ID, SALARY)
        VALUES
            (HR.EMPLOYEES_ID_SEQ.NEXTVAL, 'employee#' || HR.EMPLOYEES_ID_SEQ.NEXTVAL, 'temp_emp', 'abc@xmail.com', SYSDATE, 'IT_PROG', 1000);
    END LOOP;
END;
/

SELECT * 
FROM EMPLOYEES_COPY;


-- Each time the sequence is called, the value is incremented.

DECLARE

V_SEQ_NUM NUMBER;

BEGIN

    SELECT
        HR.EMPLOYEES_ID_SEQ.NEXTVAL
    INTO V_SEQ_NUM
    FROM DUAL;
    
    DBMS_OUTPUT.PUT_LINE(V_SEQ_NUM);
    
END;
/