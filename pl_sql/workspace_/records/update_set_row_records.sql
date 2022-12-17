DECLARE 
    R_EMP EMPLOYEES%ROWTYPE;
BEGIN
    SELECT 
        *
    INTO R_EMP
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = 104;
    
    R_EMP.SALARY := 10;
    R_EMP.COMMISSION_PCT := 0;

    UPDATE RETIRED_EMPLOYEES
    SET ROW = R_EMP 
    WHERE EMPLOYEE_ID = 104;
END;    