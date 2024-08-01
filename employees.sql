SHOW databases;
CREATE DATABASE EmployeesDB;
USE EmployeesDB;

CREATE TABLE Employees (
	empId INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(70) NOT NULL,
    phone VARCHAR(16),
    jobTitle VARCHAR(100) NOT NULL,
    salary DECIMAL(10,2),
    department VARCHAR(100),
	PRIMARY KEY (empId)
);

--import employees.csv data file into your employees table using MySQL Workbench--
--try out the following SQL queries--

SELECT * FROM Employees;
SELECT count(*) AS TotalEmp FROM Employees;
SELECT * FROM Employees WHERE department = "Engineering";
SELECT * FROM Employees WHERE department = "Engineering" AND jobTitle = "Software Engineer";
SELECT * FROM Employees WHERE salary between 80000 AND 90000;

--generate employees report to see the department wise count of employees and sum of salaries for each department
SELECT department, count(*) as countEmp, sum(salary) as TotalSalary
FROM Employees 
GROUP BY department;

--find all employees whose name starts with `Per`
SELECT * FROM Employees WHERE name LIKE "Per%";



