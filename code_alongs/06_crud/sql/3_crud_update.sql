-- make sure to select correct rows before updating
SELECT * FROM databases.sql WHERE id IN (1,2,6,7,8);

UPDATE databases.sql 
SET learnt = TRUE
WHERE id IN (1,2,6,7,8);