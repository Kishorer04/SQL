USE KISHOREDB;

CREATE TABLE STUDENT5(SNO INT(5) PRIMARY KEY AUTO_INCREMENT,
SNAME VARCHAR(15), MARKS INT(5));

INSERT INTO STUDENT5(SNAME,MARKS) VALUES('X',100);
INSERT INTO STUDENT5(SNAME,MARKS) VALUES('Y',90);
INSERT INTO STUDENT5(SNAME,MARKS) VALUES('Z',80);

ALTER TABLE STUDENT5 AUTO_INCREMENT = 100; -- Statement to specify Auto Increment starting value

SELECT * FROM STUDENT5;

SELECT * FROM EMPLOYEES LIMIT 3;
SELECT * FROM EMPLOYEES LIMIT 1,3;  -- Limit with range