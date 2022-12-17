SELECT hr.employees.employee_id,
       hr.employees.department_id,
       hr.departments.department_name,
       hr.employees.job_id,
       hr.jobs.job_title
FROM hr.employees 
INNER JOIN hr.departments
ON hr.employees.department_id = hr.departments.department_id
INNER JOIN hr.jobs
ON hr.employees.job_id = hr.jobs.job_id
WHERE hr.employees.department_id = 80;