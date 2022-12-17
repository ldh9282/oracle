TO_CHAR을 조건문에서 레코드에 사용한다면 풀 테이블 스캔이 되기에 주의해야함
성능 최적화를 위해 레코드가 아니라 리터럴에 함수를 처리해야함

see that it does a full table scan. That's because of the to_char()
I get 529 rows but in 255.59 seconds! Which is because I guess I am doing TO_CHAR on EACH record.

WHERE TO_CHAR (create_date,'MM/DD/YYYY)' >= '04/10/2010'
AND TO_CHAR (create_date, 'MM/DD/YYYY') <= '04/11/2010'


but I expect it was way closer to 0.14 seconds than 4 minutes.

WHERE            
    create_date >= to_timestamp('04/10/2010','MM/DD/YYYY')
AND
    create_date < to_timestamp('04/11/2010','MM/DD/YYYY')