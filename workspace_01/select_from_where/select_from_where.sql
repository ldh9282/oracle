SELECT last_name, salary, NVL(commission_pct, 0) AS "COMMISION"
FROM hr.employees;