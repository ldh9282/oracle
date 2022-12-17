SELECT last_name, salary, (CASE WHEN commission_pct IS NULL THEN 0
                                WHEN commission_pct IS NOT NULL THEN commission_pct END) 
                           AS "COMMISION"
FROM hr.employees;

SELECT last_name, salary, NVL(commission_pct, 0) AS "COMMISION"
FROM hr.employees;