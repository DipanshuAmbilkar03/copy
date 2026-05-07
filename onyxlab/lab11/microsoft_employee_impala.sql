CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
  emp_id INT,
  name STRING,
  department STRING,
  salary INT,
  city STRING
);

INSERT INTO employees VALUES
(101, 'Dipanshu', 'Engineering', 120000, 'Mumbai'),
(102, 'Keshav', 'HR', 90000, 'Delhi'),
(103, 'Harsh', 'Finance', 110000, 'Pune'),
(104, 'Naman', 'Engineering', 150000, 'Bangalore'),
(105, 'Kinjal', 'Management', 200000, 'Ahmedabad'),
(106, 'Shreya', 'HR', 95000, 'Kolkata'),
(107, 'Ayush', 'Engineering', 130000, 'Hyderabad');

SELECT * FROM employees;
SELECT MAX(salary) AS highest_salary FROM employees;
SELECT MIN(salary) AS lowest_salary FROM employees;
SELECT * FROM employees WHERE city = 'Mumbai';
SELECT department, COUNT(*) AS total_employees FROM employees GROUP BY department;
SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department;
SELECT * FROM employees WHERE salary BETWEEN 100000 AND 150000;
SELECT * FROM employees ORDER BY name ASC;
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;
SELECT * FROM employees WHERE department != 'Engineering';
SELECT SUM(salary) AS total_salary FROM employees;