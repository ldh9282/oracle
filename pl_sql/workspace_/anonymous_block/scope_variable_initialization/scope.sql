SET SERVEROUTPUT ON;

DECLARE
    v_outer VARCHAR2(50) := 'Outer Variable';
BEGIN
    DECLARE
        v_inner VARCHAR2(50) := 'Inner Variable';
    BEGIN
        dbms_output.put_line('inside -> ' || v_outer);
        dbms_output.put_line('inside -> ' || v_inner);
    END;
    dbms_output.put_line(v_outer);
--    dbms_output.put_line(v_inner);
END;