-- constraint not null 생성
-- create table 문 안에서
-- CONSTRAINT constraintname NOT NULL
-- constraint name 규칙 :  tablename_keyname_nn
"LAST_NAME" VARCHAR2(25 BYTE) CONSTRAINT "EMP_LAST_NAME_NN" NOT NULL,

-- constraint unique 생성
-- create table 문 안에서
-- CONSTRAINT constraintname UNIQUE (유니크키)
-- constraint name 규칙 :  tablename_keyname_uk
CONSTRAINT "EMP_EMAIL_UK" UNIQUE ("EMAIL")

-- constraint fk 생성
-- create table 문 안에서
-- CONSTRAINT constraintname FOREIGN KEY (외래키) REFERENCES schema.parenttablename (기본키),
-- constraint name 규칙 :  tablename_keyname_fk
CONSTRAINT "EMP_JOB_FK" FOREIGN KEY ("JOB_ID")
REFERENCES "HR"."JOBS" ("JOB_ID"),

-- constraint check 생성
-- create table 문 안에서
-- CONSTRAINT  constraintname CHECK (유효성검사),
-- constraint name 규칙 :  tablename_keyname_validationname
CONSTRAINT "EMP_SALARY_MIN" CHECK (salary > 0),

-- constraint pk 생성
-- create table 밖에서
-- ALTER TABLE schema.tablename ADD CONSTRAINT constraintname PRIMARY KEY (기본키);
-- constraint name 규칙 :  tablename_keyname_pk
ALTER TABLE "HR"."EMPLOYEES" ADD CONSTRAINT "EMP_EMP_ID_PK" PRIMARY KEY ("EMPLOYEE_ID");
