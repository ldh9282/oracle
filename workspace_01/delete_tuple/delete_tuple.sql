-- DML 이라 COMMIT 을 하기 전에 ROLLBACK할 수 있음

DELETE FROM sampleuser.products
WHERE prod_id = 'A4';