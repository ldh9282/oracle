--The %TYPE attribute provides the datatype of a variable or database column.
DECLARE
    v_type hr.employees.job_id%TYPE := 'IT_PROG';
    v_type2 v_type%TYPE := 'SA_MAN';
    v_type3 hr.employees.job_id%TYPE := NULL;
BEGIN
    dbms_output.put_line(v_type);
    dbms_output.put_line(v_type2);
    dbms_output.put_line(v_type3 || 'HELLO');
END;