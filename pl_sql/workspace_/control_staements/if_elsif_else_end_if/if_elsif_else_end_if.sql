DECLARE

V_NUMBER NUMBER := 30;

BEGIN

IF V_NUMBER < 10 THEN
    DBMS_OUTPUT.put_line('I am samller than 10');
ELSIF V_NUMBER < 20 THEN
    DBMS_OUTPUT.put_line('I am samller than 20');
ELSIF V_NUMBER < 30 THEN
    DBMS_OUTPUT.put_line('I am samller than 30');
ELSIF V_NUMBER < 40 THEN
    DBMS_OUTPUT.put_line('I am samller than 40');
ELSE
    DBMS_OUTPUT.put_line('I am equal or greater than 40');
END IF;


END;
/

SET SERVEROUTPUT ON;

DECLARE

V_NUMBER NUMBER := NULL;

BEGIN

IF V_NUMBER < 10 THEN
    DBMS_OUTPUT.put_line('Hi');
    DBMS_OUTPUT.put_line('I am samller than 10');
ELSIF V_NUMBER < 20 THEN
    DBMS_OUTPUT.put_line('I am samller than 20');
ELSIF V_NUMBER < 30 THEN
    DBMS_OUTPUT.put_line('I am samller than 30');
ELSIF V_NUMBER < 40 THEN
    DBMS_OUTPUT.put_line('I am samller than 40');
ELSE
    IF V_NUMBER IS NULL THEN
        DBMS_OUTPUT.put_line('The number is null.');
    ELSE    
        DBMS_OUTPUT.put_line('I am equal or greater than 40');
    END IF;
END IF;
END;
/