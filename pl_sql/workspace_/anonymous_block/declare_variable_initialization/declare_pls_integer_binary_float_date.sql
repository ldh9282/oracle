-----------------------===================-----------------------
-----------------------DECLARING VARIABLES-----------------------
-----------------------===================-----------------------

DECLARE 
    v_text VARCHAR2(50) NOT NULL DEFAULT 'Hello';
    v_number1 NUMBER := 50;
    v_number2 NUMBER(4,2) := 50.42;
    v_number3 PLS_INTEGER := 50;
    v_number4 BINARY_FLOAT := 50.42;
    v_date1 DATE := TO_DATE('2012.4.18', 'yy.MM.DD');
    v_date2 TIMESTAMP(0) := systimestamp;
BEGIN
    dbms_output.put_line(v_text);
    v_text := 'PL/SQL' || 'Course';
    dbms_output.put_line(v_text);
    dbms_output.put_line(v_number1);
    dbms_output.put_line(v_number2);
    dbms_output.put_line(v_number3);
    dbms_output.put_line(v_number4);
    dbms_output.put_line(v_date1);
    dbms_output.put_line(v_date2);
END;
