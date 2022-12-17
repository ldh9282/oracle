CREATE TABLE hr.employees_copy
AS SELECT
* 
FROM employees;

SELECT
* 
FROM employees_copy;
/

BEGIN
    FOR i IN 207..216 LOOP
        INSERT INTO employees_copy
            (employee_id, first_name, last_name, email, hire_date, job_id, salary)
        VALUES
            (i, 'EMPLOYEE_ID#'||i, 'TEMP_EMP', 'abc@xemail.com', sysdate, 'IT_PROG', 1000);
    END LOOP;
END;
/