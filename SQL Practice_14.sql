USE KISHOREDB;

SET AUTOCOMMIT=0; -- When AUTOCOMMIT = 0 that means auto commit is disabled. Use '1' to enable. 
-- In MySQL database by default auto commit is enabled.

SELECT * FROM EMPLOYEE;

INSERT INTO EMPLOYEE VALUES(3,'Kishore',20000,23);

COMMIT;
ROLLBACK; -- Rollback wont work if commit is done. Rollback will only work when commit is not done.