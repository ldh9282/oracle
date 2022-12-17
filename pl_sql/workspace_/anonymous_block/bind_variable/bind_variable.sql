VARIABLE var_number NUMBER; 
/ -- seperately run script

BEGIN
    :var_number := 102;
END;
/

SELECT * 
FROM employees
WHERE employee_id = :var_number;
/
