-- Oracle records are the same as structures in C language.
-- All items are different data types
-- For creating a record variable you can use %ROWTYPE OR %TYPE
-- Syntax: variable_name.field_name

SET SERVEROUT ON;

DECLARE
    R_EMP EMPLOYEES%ROWTYPE;
BEGIN

    SELECT 
        *
    INTO R_EMP
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = '101';
    
    DBMS_OUTPUT.PUT_LINE(R_EMP.FIRST_NAME || ' ' || R_EMP.LAST_NAME);
    R_EMP.FIRST_NAME := 'Fiora';
    DBMS_OUTPUT.PUT_LINE(R_EMP.FIRST_NAME || ' ' || R_EMP.LAST_NAME);

END;
/


-- We can customize the record type
-- and set the number of variables to store in a record.
SET SERVEROUT ON;

DECLARE
   
    TYPE T_EMP IS RECORD (
        FIRST_NAME EMPLOYEES.FIRST_NAME%TYPE,
        LAST_NAME EMPLOYEES.LAST_NAME%TYPE
    );
    R_EMP T_EMP;
BEGIN

    SELECT 
        FIRST_NAME,
        LAST_NAME
    INTO R_EMP
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = '101';
    
    DBMS_OUTPUT.PUT_LINE(R_EMP.FIRST_NAME);
    DBMS_OUTPUT.PUT_LINE(R_EMP.FIRST_NAME || ' ' || R_EMP.LAST_NAME);
    R_EMP.FIRST_NAME := 'Fiora';
    DBMS_OUTPUT.PUT_LINE(R_EMP.FIRST_NAME || ' ' || R_EMP.LAST_NAME);    


END;
/