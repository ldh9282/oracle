SET SERVEROUTPUT ON;

------------------------VARIABLE SCOPE--------------------------
BEGIN <<OUTER>>
DECLARE
  v_text  VARCHAR2(20) := 'Out-text';
BEGIN 
  DECLARE
    v_text  VARCHAR2(20) := 'In-text';
  BEGIN
      dbms_output.put_line(v_text);
      dbms_output.put_line(OUTER.v_text);
  END;
  dbms_output.put_line(v_text);
END;
END OUTER;