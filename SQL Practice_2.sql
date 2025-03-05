USE world;
DESCRIBE city;
SELECT * FROM city;
SELECT * FROM city WHERE Population > 120000;
SELECT * FROM city WHERE CountryCode = 'AFG';
SELECT * FROM city WHERE Population is null;
SELECT DISTINCT CountryCode FROM city;
SELECT DISTINCT * FROM city;

SELECT * FROM city WHERE Name= 'Kabul' AND CountryCode = 'AFG';
SELECT * FROM city WHERE ID=2 OR Population = 237500;
SELECT * FROM city WHERE NOT CountryCode = 'AFG';

SELECT * FROM city WHERE Population BETWEEN 120000 AND 125000;
SELECT * FROM city WHERE Population NOT BETWEEN 120000 AND 130000;

SELECT * FROM city WHERE Population=100000 or Population =237500 or Population = 2345;
SELECT * FROM city WHERE Population IN(100000,237500,2345);
SELECT * FROM city WHERE Population NOT IN(100000, 237500, 2345);

SELECT Name FROM city WHERE Name LIKE 'B%';
SELECT Name FROM city WHERE Name LIKE '%a';
SELECT Name FROM city WHERE NAME LIKE '___';
SELECT Name FROM city WHERE NAME NOT LIKE 'S%a';
SELECT Name FROM city WHERE NAME LIKE '%m%';
SELECT Name FROM city WHERE NAME LIKE '_m%';
