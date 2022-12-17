-----------------------------------------
DDL : CREATE SEQUENCE
-----------------------------------------

CREATE SEQUENCE hr.dept_deptid_seq1
START WITH 1 INCREMENT BY 1 NOMAXVALUE 
NOCYCLE CACHE 20;

----------------------------------------
DDL : CREATE TABLE
----------------------------------------

CREATE TABLE HR.MYBOARD (

BNO NUMBER(10, 0) default hr.dept_deptid_seq1.nextval,
btitle varchar2(3000) not null


) tablespace users;

--------------------------------------------------------
DDL : ADD CONSTRAINT PRIMARY KEY
--------------------------------------------------------

ALTER TABLE HR.MYBOARD ADD PRIMARY KEY (BNO);

--------------------------------------------------------
DML : INSERT TUPLES WITH SEQUENCE(DEFAULT)
--------------------------------------------------------

INSERT INTO HR.MYBOARD VALUES (DEFAULT, 'ABCD111');
INSERT INTO HR.MYBOARD VALUES (DEFAULT, 'ABCD222');
INSERT INTO HR.MYBOARD VALUES (DEFAULT, 'ABCD333');