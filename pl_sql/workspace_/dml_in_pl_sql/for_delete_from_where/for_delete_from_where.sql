BEGIN
    FOR i IN 207..216 LOOP
        DELETE FROM employees_copy
        WHERE employee_id = i;
    END LOOP;
END;
/