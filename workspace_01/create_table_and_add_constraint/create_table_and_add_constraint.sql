CREATE TABLE sampleuser.products (

prod_id VARCHAR2(10),
prod_name VARCHAR2(100) CONSTRAINT nn_products_name NOT NULL,
manufacturer_name VARCHAR2(100) NOT NULL,
sell_unit_price NUMBER(8) CONSTRAINT nn_sell_up NOT NULL,
buy_unit_price NUMBER(8) CONSTRAINT nn_buy_up NOT NULL

);

ALTER TABLE sampleuser.products
ADD CONSTRAINT pk_products_prod_id PRIMARY KEY(prod_id);




CREATE TABLE sampleuser.buy_companys (

bc_id VARCHAR2(10),
bc_name VARCHAR2(100),
bc_address VARCHAR2(600),
bc_tel_num VARCHAR2(12),
bc_reg_num CHAR(10),
bc_ownwe VARCHAR2(20)

);

ALTER TABLE sampleuser.buy_companys
ADD CONSTRAINT pk_buy_companys_id PRIMARY KEY (bc_id);

ALTER TABLE sampleuser.buy_companys
MODIFY (bc_name CONSTRAINT nn_bc_name NOT NULL);


ALTER TABLE sampleuser.buy_companys
MODIFY (bc_tel_num CONSTRAINT nn_bc_tel_num NOT NULL);


ALTER TABLE sampleuser.buy_companys
MODIFY (bc_reg_num CONSTRAINT nn_bc_reg_num NOT NULL);

ALTER TABLE sampleuser.buy_companys
ADD CONSTRAINT uk_bc_tel_num unique (bc_tel_num);

ALTER TABLE sampleuser.buy_companys
ADD CONSTRAINT uk_bc_reg_num unique (bc_reg_num);




CREATE TABLE sampleuser.sales (

sale_id VARCHAR2(10),
sale_datetime DATE

);

ALTER TABLE sampleuser.sales
ADD CONSTRAINT pk_sales_id PRIMARY KEY (sale_id);

ALTER TABLE sampleuser.sales
MODIFY (sale_datetime CONSTRAINT nn_sale_datetime NOT NULL);






CREATE TABLE sampleuser.sales_detail (

sale_id VARCHAR2(10),
sale_prod_id VARCHAR2(10),
sale_prod_qty NUMBER(4)

);

ALTER TABLE sampleuser.sales_detail
ADD CONSTRAINT pk_sales_detail PRIMARY KEY (sale_id, sale_prod_id);

ALTER TABLE sampleuser.sales_detail
MODIFY (sale_prod_qty CONSTRAINT nn_sale_prod_qty NOT NULL);

ALTER TABLE sampleuser.sales_detail
ADD CONSTRAINT fk_sale_id FOREIGN KEY (sale_id)
    REFERENCES sampleuser.sales (sale_id);

ALTER TABLE sampleuser.sales_detail
ADD CONSTRAINT fk_sale_prod_id FOREIGN KEY (sale_prod_id)
    REFERENCES sampleuser.products (prod_id);





    
CREATE TABLE sampleuser.purchases (

buy_id VARCHAR2(10),
buy_datetime DATE,
buy_com_id VARCHAR2(10)

);


ALTER TABLE sampleuser.purchases
ADD CONSTRAINT pk_purchases PRIMARY KEY (buy_id);

ALTER TABLE sampleuser.purchases
MODIFY (buy_datetime CONSTRAINTS nn_buy_datetime NOT NULL);

ALTER TABLE sampleuser.purchases
MODIFY (buy_com_id CONSTRAINTS nn_buy_com_id NOT NULL);






CREATE TABLE sampleuser.purchases_detail (

buy_id VARCHAR2(10),
buy_prod_id VARCHAR2(10),
buy_prod_qty NUMBER(4)

);

ALTER TABLE sampleuser.purchases_detail
ADD CONSTRAINT pk_purchases_detail PRIMARY KEY (buy_id, buy_prod_id);

ALTER TABLE sampleuser.purchases_detail
MODIFY (buy_prod_qty CONSTRAINTS nn_buy_prod_qty NOT NULL);

ALTER TABLE sampleuser.purchases_detail
ADD CONSTRAINT fk_buy_id FOREIGN KEY (buy_id)
    REFERENCES sampleuser.purchases (buy_id);
    
ALTER TABLE sampleuser.purchases_detail
ADD CONSTRAINT fk_buy_prod_id FOREIGN KEY (buy_prod_id)
    REFERENCES sampleuser.products (prod_id); 
    




    
    

INSERT INTO SAMPLEUSER.PRODUCTS VALUES ('A1', '흰우유', '서울우유', 2000, 1000);

INSERT INTO SAMPLEUSER.PRODUCTS VALUES ('A2', '짱구2', '해태제과', 1000, 1000);

COMMIT;