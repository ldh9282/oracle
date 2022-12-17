-- HIRE_DATE_AND_MONTH 으로 그룹화

SELECT TO_CHAR(HIRE_DATE, 'YYYY/MM') AS "HIRE_DATE_AND_MONTH",
       COUNT(*)
FROM EMPLOYEES
GROUP BY TO_CHAR(HIRE_DATE, 'YYYY/MM');


-- HIRE_QUATER 으로 그룹화
SELECT TO_CHAR(HIRE_DATE, 'YYYY') || 
            CASE WHEN TO_CHAR(HIRE_DATE, 'MM') IN ('01', '02', '03')
                    THEN 'Q1'
                  WHEN TO_CHAR(HIRE_DATE, 'MM') IN ('04', '05', '06')
                    THEN 'Q2'
                  WHEN TO_CHAR(HIRE_DATE, 'MM') IN ('07', '08', '09' )
                    THEN 'Q3'
                  WHEN TO_CHAR(HIRE_DATE, 'MM') IN ('10', '11', '12')
                    THEN 'Q4'
            END AS "HIRE_QUATER",
       COUNT(*)
FROM EMPLOYEES 
GROUP BY TO_CHAR(HIRE_DATE, 'YYYY') || 
            CASE WHEN TO_CHAR(HIRE_DATE, 'MM') IN ('01', '02', '03')
                    THEN 'Q1'
                 WHEN TO_CHAR(HIRE_DATE, 'MM') IN ('04', '05', '06')
                    THEN 'Q2'
                 WHEN TO_CHAR(HIRE_DATE, 'MM') IN ('07', '08', '09' )
                    THEN 'Q3'
                 WHEN TO_CHAR(HIRE_DATE, 'MM') IN ('10', '11', '12')
                    THEN 'Q4'
            END
ORDER BY 1;