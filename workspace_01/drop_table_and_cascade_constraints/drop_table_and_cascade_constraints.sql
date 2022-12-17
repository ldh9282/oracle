DROP TABLE sampleuser.products;

-- 특별히 부모 테이블을 삭제하기 전에는 참조하는 파생테이블의 외래키 제약조건을 먼저 삭제해야함
-- 부모테이블을 삭제할 때 자식 테이블의 외래키 제약조건도 같이 삭제함
DROP TABLE sampleuser.products CASCADE CONSTRAINTS;