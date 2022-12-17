 CREATE SEQUENCE schema.sequencename
 |START WITH n| |INCREMENT BY n| |MAXVALUE n 또는 NOMAXVALUE| |MINVALUE n 또는 NOMINVALUE|
 |CYCLE 또는 NOCYCLE| |CACHE n 또는 NOCACHE| ;

-- CREATE SEQUENCE schema.sequencename
-- START WITH 1 INCREMENT BY 1 NOMAXVALUE 
-- NOCYCLE CACHE 20

-- START WITH n 디폴트 : 1
-- INCREMENT BY n 디폴트 : 1
-- MAXVALUE n  디폴트 : NOMAXVALUE(=10 to the power of 27)
-- MINVALUE n  디폴트 : 1
-- 디폴트 NOCYCLE
-- 디폴트 CACHE 20  
-- 캐쉬는 임시 메모리로 빠른 엑세스로 성능향상을 기대할 수 있음
-- 그 대신 임시메모리에 저장된 시퀀스 값이 DB 비정상 종료 시 날아가서 갭이 생길 수 있음.
-- NOCACHE는 명시해야함
-- NOCACHE 는 시퀀스 값을 미리 할당하지 않음

예시)
CREATE SEQUENCE hr.dept_deptid_seq;

이하 디폴트 설정과 동일
-- CREATE SEQUENCE schema.sequencename
-- START WITH 1 INCREMENT BY 1 NOMAXVALUE 
-- NOCYCLE CACHE 20
