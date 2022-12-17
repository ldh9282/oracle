SET SERVEROUTPUT ON;
BEGIN
    FOR i IN 0..3 LOOP
        FOR j IN 0..3 LOOP
        
            IF j = 1 THEN
                CONTINUE;
            END IF;
            
            DBMS_OUTPUT.PUT_LINE('My counter is : ' || i || ', ' || j);
            
            
        END LOOP;
    END LOOP;
    

END;
/


SET SERVEROUTPUT ON;
BEGIN
    FOR i IN 0..3 LOOP
        FOR j IN 0..3 LOOP
        
            IF MOD(i * j, 2) = 0 THEN
                CONTINUE;
            END IF;
            
            DBMS_OUTPUT.PUT_LINE('My counter is : ' || i || ' x ' || j || 
                ' = ' || i*j);
            
            
        END LOOP;
    END LOOP;
    

END;
/


