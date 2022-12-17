BEGIN

    FOR i IN 0..9 LOOP
        DBMS_OUTPUT.PUT_LINE('My counter is : ' || i);
        
    END LOOP;
    


    FOR i IN REVERSE 0..9 LOOP
        DBMS_OUTPUT.PUT_LINE('My counter is : ' || i);
        
    END LOOP;
END;
/
