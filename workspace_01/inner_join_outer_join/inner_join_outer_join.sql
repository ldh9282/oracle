-- one to many relation
-- Join is a query that is used to combine rows from two or more tables or views.
-- It retrieves data from multiple tables 


-- It returns all rows from multiple tables where the join condition is met. 
SELECT suppliers.supplier_id, suppliers.supplier_name, order1.order_number  
FROM suppliers   
INNER JOIN order1  
ON suppliers.supplier_id = order1.supplier_id;  


-- Left Outer Join returns all rows from the left (first) table specified in the ON condition
-- and only those rows from the right (second) table where the join condition is met.
SELECT suppliers.supplier_id, suppliers.supplier_name, order1.order_number  
FROM suppliers  
LEFT OUTER JOIN order1  
ON suppliers.supplier_id = order1.supplier_id;  


-- Right Outer Join returns all rows from the right-hand table specified in the ON condition
-- and only those rows from the other table where the join condition is met.
SELECT order1.order_number, order1.city, suppliers.supplier_name  
FROM suppliers  
RIGHT OUTER JOIN order1  
ON suppliers.supplier_id = order1.supplier_id;  



-- Full Outer Join returns all rows from the left hand table and right hand table.
-- It places NULL where the join condition is not met.
SELECT suppliers.supplier_id, suppliers.supplier_name, order1.order_number  
FROM suppliers  
FULL OUTER JOIN order1  
ON suppliers.supplier_id = order1.supplier_id;  