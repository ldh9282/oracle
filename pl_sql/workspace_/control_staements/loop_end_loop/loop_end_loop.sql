-- basic loop 
-- 다른 랭귀지의 do while문과 같음
-- 한번은 무조건 실행된다는 점
DECLARE

V_COUNTER NUMBER(2) := 0;

BEGIN
    
    LOOP
        DBMS_OUTPUT.put_line('My counter is: ' || V_COUNTER);
        V_COUNTER := V_COUNTER + 1;
        
        
        
        IF V_COUNTER = 10 THEN 
            DBMS_OUTPUT.put_line('EXIT'); 
            EXIT;
        END IF;
        
    END LOOP;

END;
/