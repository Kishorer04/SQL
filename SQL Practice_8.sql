USE KISHOREDB;

SELECT * FROM A;
SELECT * FROM B;

-- Common data from both the tables
SELECT * FROM A INNER JOIN B
ON
A.NUM = B.NUM;

-- Common data from both the tables and the unmatched data from table 1 
SELECT * FROM A LEFT JOIN B
ON
A.NUM = B.NUM;

-- Common data from both the tables and the unmatched data from table 2
SELECT * FROM A RIGHT JOIN B
ON 
A.NUM = B.NUM;

-- Full Join is not supported in MySQL
-- All matching rows from both tables, Unmatched rows from both tables
SELECT * FROM A FULL JOIN B
ON 
A.NUM = B.NUM;


USE SAKILA;
SELECT * FROM FILM;
SELECT * FROM FILM_ACTOR;

SELECT F.FILM_ID, A.FILM_ID, TITLE, DESCRIPTION, RELEASE_YEAR FROM FILM F INNER JOIN FILM_ACTOR A
ON
F.FILM_ID=A.FILM_ID;

SELECT FILM.FILM_ID, FILM_ACTOR.FILM_ID, TITLE, DESCRIPTION, RELEASE_YEAR FROM FILM LEFT JOIN FILM_ACTOR 
ON
FILM.FILM_ID=FILM_ACTOR.FILM_ID;

SELECT FILM.FILM_ID, FILM_ACTOR.FILM_ID, TITLE, DESCRIPTION, RELEASE_YEAR FROM FILM RIGHT JOIN FILM_ACTOR 
ON
FILM.FILM_ID=FILM_ACTOR.FILM_ID;

-------------------------------------------
-- Self Join
/* For Self Join we won't use Self Join keyword. Instead, we'll split the same table into 2 with aliases and compare the data between them 
based on some condition */

USE KISHOREDB;

CREATE TABLE employees(emp_id INT(3), emp_name VARCHAR(50),  manager_id INT(3));
   
INSERT INTO employees (emp_id, emp_name, manager_id) VALUES
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Carol', 1),
(4, 'Dave', 2),
(5, 'Eve', 3);

SELECT * FROM EMPLOYEES;

SELECT E.EMP_ID, M.MANAGER_ID, E.EMP_NAME FROM EMPLOYEES E, EMPLOYEES M WHERE E.EMP_ID = M.MANAGER_ID;

SELECT e1.emp_name AS Employee, e2.emp_name AS Manager FROM employees e1, employees e2 WHERE e1.manager_id = e2.emp_id;


    
    

   

   
 

