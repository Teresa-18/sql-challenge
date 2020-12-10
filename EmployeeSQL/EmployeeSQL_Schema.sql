CREATE TABLE Departments(dept_no VARCHAR NOT NULL PRIMARY KEY,
dept_name VARCHAR(255));

CREATE TABLE Titles(title_id VARCHAR NOT NULL PRIMARY KEY,
title VARCHAR(255));

CREATE TABLE Employees(emp_no INT NOT NULL PRIMARY KEY,emp_title VARCHAR, 
birth_date DATE,first_name VARCHAR,last_name VARCHAR,sex VARCHAR,hire_date Date,
FOREIGN KEY (emp_title) REFERENCES Titles(title_id));

CREATE TABLE Dept_Emp(emp_no INT,dept_no VARCHAR,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
PRIMARY KEY(emp_no, dept_no));

CREATE TABLE Dept_Manager(dept_no VARCHAR,emp_no INT,
FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
PRIMARY KEY(dept_no, emp_no));

CREATE TABLE SALARIES(EMP_NO INT, SALARY INT,
FOREIGN KEY (EMP_NO) REFERENCES EMPLOYEES(EMP_NO),
PRIMARY KEY(EMP_NO,SALARY));


SELECT *
FROM DEPARTMENTS
SELECT *
FROM TITLES
SELECT *
FROM EMPLOYEES
SELECT *
FROM DEPT_EMP
SELECT *
FROM DEPT_MANAGER
SELECT *
FROM SALARIES


SELECT Employees.emp_no, Employees.last_name, Employees.first_name, 
Employees.sex, Salaries.salary
FROM Salaries
INNER JOIN Employees ON
Employees.emp_no=Salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';