SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER(4, 2) NOT NULL := 50.42;
BEGIN
    dbms_output.put_line(v_number || ' BEGINNER TO ADVANCED');
END;