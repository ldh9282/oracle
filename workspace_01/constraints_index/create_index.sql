-- 인덱스 pk 생성 
-- CREATE UNIQUE INDEX  schema.index_name ON schema.table_name (기본키)
-- index name 규칙 : tablename_keyname_pk  ex) EMP_EMP_ID_PK
CREATE UNIQUE INDEX "HR"."EMP_EMP_ID_PK" ON "HR"."EMPLOYEES" ("EMPLOYEE_ID") ;

-- 인덱스 pk 생성 (외래키 2개 혹은 복합키) 
-- CREATE UNIQUE INDEX  schema.index_name ON schema.table_name (외래키1, 외래키2);
-- index name 규칙 : tablename_keyname1_keyname2_pk  ex) JHIST_EMP_ID_ST_DATE_PK
CREATE UNIQUE INDEX "HR"."JHIST_EMP_ID_ST_DATE_PK" ON "HR"."JOB_HISTORY" ("EMPLOYEE_ID", "START_DATE") ;


-- non-unique 인덱스 fk 생성
-- CREATE INDEX schema.index_name ON schema.table_name (외래키);
-- index name 규칙 : tablename_keyname_fk
CREATE INDEX "HR"."EMP_MANAGER_IX" ON "HR"."EMPLOYEES" ("MANAGER_ID");


-- non-unique 인덱스 lastname + firstname 생성 (fk 아님)
-- CREATE INDEX schema.index_name ON schema.table_name (컬럼1, 컬럼2);
-- index name 규칙 : tablename_keyname_ix
CREATE INDEX "HR"."EMP_NAME_IX" ON "HR"."EMPLOYEES" ("LAST_NAME", "FIRST_NAME");