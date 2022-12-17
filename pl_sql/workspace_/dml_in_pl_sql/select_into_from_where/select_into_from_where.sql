-- to put a value into variables as v_name and v_salary

DECLARE

v_name VARCHAR2(50);
v_salary employees.salary%TYPE;
BEGIN

SELECT 
    last_name,
    salary
INTO 
    v_name,
    v_salary
FROM employees

WHERE employee_id = 100;

END;