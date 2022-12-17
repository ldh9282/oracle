SELECT COUNT(employee_id) AS "EMPLOYEE_ID",
       COUNT(commission_pct)AS "COMMISSION_PCT",
       COUNT(DISTINCT commission_pct) AS "DISTINCT COMMISSION_PCT",
       COUNT(*) AS "*"
FROM hr.employees;