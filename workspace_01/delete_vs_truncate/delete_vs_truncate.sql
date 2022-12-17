-- table 에 저장된 모든 tuple 삭제 
-- DML
-- It maintains transaction logs for each deleted record.
-- Its speed is slow because it maintained the log.
-- The DELETE statement occupies more transaction space than truncate 
-- because it maintains a log for each deleted row.
-- It can use the WHERE clause to filter any specific row or data from the table.
-- It allows us to restore the deleted data by using the COMMIT or ROLLBACK statement.
DELETE FROM sampleuser.products;

-- DDL
-- It does not use the WHERE clause to filter records from the table.
-- cannot restore the deleted data after using executing this command.
TRUNCATE TABLE sampleuser.products;