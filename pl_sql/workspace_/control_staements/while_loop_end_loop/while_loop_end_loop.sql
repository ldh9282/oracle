DECLARE

V_COUNTER NUMBER(2) := 0;

BEGIN
    
    WHILE V_COUNTER < 10 LOOP

        DBMS_OUTPUT.put_line('My counter is: ' || V_COUNTER);
        V_COUNTER := V_COUNTER + 1;
        
    END LOOP;

END;
/


DECLARE

V_COUNTER NUMBER(2) := 0;

BEGIN
    
    WHILE V_COUNTER < 10 LOOP

        DBMS_OUTPUT.put_line('My counter is: ' || V_COUNTER);
        V_COUNTER := V_COUNTER + 1;
        
  
        IF V_COUNTER = 100 THEN 
            DBMS_OUTPUT.put_line('EXIT'); 
            EXIT;
        END IF;
        
    END LOOP;

END;
/