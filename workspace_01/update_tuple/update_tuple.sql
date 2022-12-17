--DML 이라 COMMIT 전에 ROLLBACK 가능
UPDATE sampleuser.products 
SET PROD_NAME = '딸기우유'
WHERE prod_id = 'A4';

UPDATE sampleuser.products 
SET prod_name = '딸기우유', sell_unit_price = 3000
WHERE prod_id = 'A4';