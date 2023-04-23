-- MORE BASIC QUERIES

SELECT * FROM employee;
SELECT * FROM client;
SELECT * FROM works_with;

SELECT * FROM employee ORDER BY salary DESC;

SELECT * FROM employee ORDER BY sex, last_name, first_name;

SELECT * FROM employee LIMIT 5;

SELECT first_name, last_name FROM employee;

SELECT first_name AS forename, last_name AS surname 
FROM employee;

SELECT DISTINCT sex FROM employee;

--SQL FUNCTIONS

SELECT COUNT(emp_id) FROM employee;
SELECT COUNT(super_id) FROM employee;

SELECT COUNT(emp_id) FROM employee
WHERE sex = 'F' AND birth_day > '1971-01-01';

SELECT AVG(salary) FROM employee WHERE sex = 'F';
SELECT AVG(salary) FROM employee WHERE sex = 'M';

SELECT SUM(salary) FROM employee;

--AGGREGATION
SELECT COUNT(sex), sex FROM employee GROUP BY sex;

SELECT SUM(total_sales), emp_id FROM works_with GROUP BY emp_id;
SELECT SUM(total_sales), client_id FROM works_with GROUP BY client_id;

--WILDCARDS
-- % =any num of characters, _ =one character

SELECT * FROM client WHERE client_name LIKE '%LLC';
SELECT * FROM branch_supplier WHERE supplier_name LIKE '%Label%';

SELECT * FROM employee WHERE birth_day LIKE "____-10-__";

SELECT * FROM client WHERE client_name LIKE "%school%";