--UNIONS
SELECT first_name AS comp_name FROM employee
UNION
SELECT branch_name FROM branch
UNION 
SELECT client_name FROM client;

SELECT client_name AS name, client.branch_id FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id FROM branch_supplier;

SELECT total_sales FROM works_with
UNION
SELECT salary FROM employee;

--JOINS
--combining data from separate tables
INSERT INTO branch VALUES(4,"Buffalo", NULL, NULL);
SELECT * FROM branch;

--inner join
--works when two tables have some data in common(like ids here)
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id;

--left join
--we get all data from the left table
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id;

--right join
--we get all data from the right table
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id;

--theres also full outer join that combines all data from both tables

--NESTED QUERIES
SELECT employee.first_name, employee.last_name 
FROM employee
WHERE employee.emp_id IN(
    SELECT works_with.emp_id 
    FROM works_with 
    WHERE works_with.total_sales>30000
);

SELECT client.client_name 
FROM client 
WHERE client.branch_id =(
    SELECT branch.branch_id
    FROM branch 
    WHERE branch.mgr_id =102
    LIMIT 1
);

--ON DELETE SET NULL
CREATE TABLE branch (
  branch_id INT PRIMARY KEY,
  branch_name VARCHAR(40),
  mgr_id INT,
  mgr_start_date DATE,
  FOREIGN KEY(mgr_id) REFERENCES employee(emp_id) ON DELETE SET NULL
);

DELETE FROM employee WHERE emp_id=102;
SELECT * FROM branch;
