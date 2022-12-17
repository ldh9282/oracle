BEGIN

    FOR i IN 0..9 LOOP
        FOR j IN 0..9 LOOP
            DBMS_OUTPUT.PUT_LINE('My counter is : ' || i || ', ' || j);
        END LOOP;
    END LOOP;
    

END;
/


BEGIN
    FOR i IN 0..9 LOOP
        FOR j IN 0..9 LOOP
            DBMS_OUTPUT.PUT_LINE('My counter is : ' || i || ', ' || j);
            
            IF j = 1 THEN
                EXIT;
            END IF;
        END LOOP;
    END LOOP;
    

END;
/



BEGIN
    <<OUTER_LOOP>>
    FOR i IN 0..9 LOOP
        <<INNER_LOOP>>
        FOR j IN 0..9 LOOP
            DBMS_OUTPUT.PUT_LINE('My counter is : ' || i || ', ' || j);
            
            IF J = 3 THEN
                EXIT OUTER_LOOP;
            END IF;
        END LOOP;
    END LOOP;
    

END;
/