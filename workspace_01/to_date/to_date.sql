SELECT last_name, hire_date FROM hr.employees 
WHERE hire_date > '08/02/01';

SELECT last_name, hire_date FROM hr.employees 
WHERE hire_date > TO_DATE('2008/02/01', 'yyyy/MM/dd');

SELECT last_name, hire_date FROM hr.employees 
WHERE hire_date > TO_DATE('2008년02월01일', 'yyyy"년"MM"월"dd"일"');

SELECT last_name, hire_date FROM hr.employees 
WHERE hire_date > TO_DATE('2008/02/01 13:30:22', 'yyyy/MM/dd HH24:MI:SS');

SELECT last_name, hire_date FROM hr.employees 
WHERE hire_date > TO_DATE('2008/02/01 오후 1:30:22 금요일'
                        , 'yyyy/MM/dd AM HH12:MI:SS DAY');
