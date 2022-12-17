SET SERVEROUTPUT ON;
DECLARE
    v_text VARCHAR2(50) NOT NULL DEFAULT 'HELLO';
BEGIN
    v_text := 'PL/SQL' || ' COURSE';
    dbms_output.put_line(v_text || ' BEGINNER TO ADVANCED');
END;

SET SERVEROUTPUT ON;
DECLARE
    v_text VARCHAR2(50) NOT NULL := 'WELCOME';
BEGIN
    dbms_output.put_line(v_text || ' BEGINNER TO ADVANCED');
END;