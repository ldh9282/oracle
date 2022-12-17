-- GOTO label_name
-- CANNOT GOTO CONTROL STATEMENTS ... IF, CASE, LOOP, FOR
-- CANNOT GOTO INNER BLOCK FROM OUTTER BLOCK 

DECLARE
    V_SEARCHED_NUMBER NUMBER := 324563;
    V_IS_PRIME BOOLEAN := TRUE;
BEGIN
    FOR i IN 2..V_SEARCHED_NUMBER - 1 LOOP
        
        IF MOD(V_SEARCHED_NUMBER, i) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(V_SEARCHED_NUMBER ||
                ' is not prime number');
            V_IS_PRIME := FALSE;
            GOTO END_POINT;
        END IF;
    END LOOP;
    
    IF V_IS_PRIME THEN
        DBMS_OUTPUT.PUT_LINE(V_SEARCHED_NUMBER ||
                ' is prime number');
    END IF;
    
    <<END_POINT>>
    DBMS_OUTPUT.PUT_LINE('Check complete..');
END;
/