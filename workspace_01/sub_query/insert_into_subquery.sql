INSERT INTO MYUSER.TBL_MEMBER (
    SELECT 
        LOWER(LAST_NAME),
        '1212',
        UPPER(FIRST_NAME),
        LOWER(EMAIL || '@gmail.com'),
        HIRE_DATE
    FROM HR.EMPLOYEES
    WHERE DEPARTMENT_ID = 50
);