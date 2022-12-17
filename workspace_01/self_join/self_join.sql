SELECT
    a.last_name AS "BUHA",
    b.last_name AS "BOSS"
FROM hr.employees a
INNER JOIN hr.employees b
ON a.manager_id = b.employee_id;