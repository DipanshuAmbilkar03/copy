-- Microsoft Employee Database (Impala-Compatible)

CREATE DATABASE microsoft_db;
USE microsoft_db;

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
