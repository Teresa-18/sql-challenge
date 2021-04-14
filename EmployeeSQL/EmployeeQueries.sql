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

SELECT Departments.dept_no, Departments.dept_name, Dept_Manager.emp_no,
Employees.last_name
FROM Departments
INNER JOIN Dept_Manager ON
Departments.dept_no=Dept_Manager.dept_no
INNER JOIN Employees ON
Employees.emp_no=Dept_Manager.emp_no;

SELECT Dept_Emp.emp_no, Employees.last_name, Employees.first_name, 
Departments.dept_name
FROM Dept_Emp
INNER JOIN Departments ON
Dept_Emp.dept_no=Departments.dept_no
INNER JOIN Employees ON
Dept_Emp.emp_no=Employees.emp_no;

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules'
AND last_name like 'B%';

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, 
Departments.dept_name
FROM Employees
INNER JOIN Dept_Emp ON
Dept_Emp.emp_no=Employees.emp_no
INNER JOIN Departments ON
Dept_Emp.dept_no=Departments.dept_no
WHERE Departments.dept_name = 'Sales';

SELECT Employees.emp_no, Employees.last_name, Employees.first_name,
Departments.dept_name
FROM Employees
INNER JOIN Dept_Emp ON
Dept_Emp.emp_no=Employees.emp_no
INNER JOIN Departments ON
Dept_Emp.dept_no=Departments.dept_no
WHERE Departments.dept_name IN(
	SELECT dept_name
	FROM Departments
	WHERE dept_name = 'Sales'
	UNION
	SELECT dept_name
	FROM Departments
	WHERE dept_name = 'Development');
	
SELECT last_name, COUNT(last_name) AS "Last Name"
FROM Employees
GROUP BY last_name
ORDER BY "Last Name" DESC;

SELECT COUNT(last_name) AS "Last Name"
FROM Employees
GROUP BY last_name
ORDER BY "Last Name" DESC;