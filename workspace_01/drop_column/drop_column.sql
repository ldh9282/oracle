-- 사용하면 안됨. 모든 tuple을 새로 생성하고 커밋을 함
-- 튜플이 없을 때 구축할 때 사용하지. 구축 뒤에 사용해서는 안됨
ALTER TABLE sampleuser.products
DROP COLUMN total_stock;