ALTER TABLE sampleuser.purchases_detail
RENAME TO buy_details;

ALTER TABLE sampleuser.sales
RENAME COLUMN sale_id TO sales_id;