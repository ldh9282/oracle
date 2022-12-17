SELECT employee_id, first_name || ' ' || last_name AS "EMPLOYEE_NAME", hire_date 
FROM hr.employees
WHERE hire_date BETWEEN TO_DATE('2008-01-01', 'yyyy-MM-dd') 
                    AND TO_DATE('2008-12-31', 'yyyy-MM-dd')
ORDER BY 3 ASC;        

SELECT employee_id, first_name || ' ' || last_name AS "EMPLOYEE_NAME", hire_date 
FROM hr.employees
WHERE hire_date BETWEEN TO_DATE('2008-01-01', 'yyyy-MM-dd') 
                    AND TO_DATE('2008-12-31', 'yyyy-MM-dd')
ORDER BY hire_date ASC;


SELECT employee_id, first_name || ' ' || last_name AS "EMPLOYEE_NAME", hire_date 
FROM hr.employees
WHERE hire_date BETWEEN TO_DATE('2008-01-01', 'yyyy-MM-dd') 
                    AND TO_DATE('2008-12-31', 'yyyy-MM-dd')
ORDER BY 3 DESC;                    