-- Show table 
DESCRIBE employees;

-- INSERT DATA

-- Add values to columns in employee table
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (1001, '1983-07-14', 'David', 'Simpson', 'M', '2017-02-22');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (1002, '1991-10-12', 'Sara', 'Hartford', 'F', '2018-06-05'); 
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (1003, '1992-01-04', 'Fred', 'Wilson', 'M', '2017-07-01'); 
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (1004, '1976-07-28', 'Jacob', 'Thompson', 'M', '2020-10-10');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (1005, '1984-05-17', 'Sam', 'Johnson', 'M', '2017-04-01');
-- not necessary to list columns if values are given for all columns
INSERT INTO employees VALUES (1006, '1981-12-02', 'Alicia', 'Williams', 'F', '2016-02-01'); 
INSERT INTO employees VALUES (1007, '1989-06-23', 'Sam', 'Roberts', 'F', '2020-12-10'); 
INSERT INTO employees VALUES (1008, '1990-09-26', 'Kevin', 'Ames', 'M', '2018-10-14');  
INSERT INTO employees VALUES (1009, '1977-11-12', 'Sharon', 'Stuart', 'F', '2016-01-25');
INSERT INTO employees VALUES (1010, '1983-07-06', 'Julia', 'Edison', 'F', '2021-10-01'); 
INSERT INTO employees VALUES (1011, '1988-10-12', 'Elizabeth', 'Lawson', 'F', '2018-06-10');
INSERT INTO employees VALUES (1012, '1992-06-22', 'Robert', 'Johnson', 'M', '2019-11-01'); 
INSERT INTO employees VALUES (1013, '1989-05-30', 'Terry', 'Gilford', 'M', '2020-11-20'); 
INSERT INTO employees VALUES (1014, '1993-08-09', 'Sam', 'Hill', 'M', '2022-01-10');     
INSERT INTO employees VALUES (1015, '1990-04-18', 'Paul', 'Crawford', 'M', '2022-02-01');
-- add multiple comma-delineated entries


-- add salaries for employees
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (1001, 30100, '2017-02-22', '2019-06-20'); 
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (1001, 36600, '2019-06-20', NOW());  
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (1002, 36000, '2018-06-05', '2019-06-05'); 
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (1002, 40600, '2019-06-05', '2021-09-01');  
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (1002, 49600, '2021-09-01', NOW());  

-- since all fields given, we can omit column names
INSERT INTO salaries VALUES (1003, 34000, '2017-07-01', '2020-12-01');
INSERT INTO salaries VALUES (1003, 37000, '2020-12-01', '2021-09-20');
INSERT INTO salaries VALUES (1004, 32280, '2020-10-10', '2021-11-30');
INSERT INTO salaries VALUES (1004, 34600, '2021-11-30', NOW());
INSERT INTO salaries VALUES (1005, 44050, '2017-04-01', '2020-05-31');
INSERT INTO salaries VALUES (1005, 46050, '2020-05-31', '2022-01-31');
INSERT INTO salaries VALUES (1006, 9800, '2016-02-01', '2018-08-01');
INSERT INTO salaries VALUES (1007, 43800, '2020-12-10', NOW());
INSERT INTO salaries VALUES (1008, 46580, '2018-10-14', '2020-03-10');
INSERT INTO salaries VALUES (1009, 32600, '2016-01-25', '2018-02-01');
INSERT INTO salaries VALUES (1009, 34100, '2018-02-01', '2021-02-20');
INSERT INTO salaries VALUES (1010, 18050, '2021-10-01', NOW());
INSERT INTO salaries VALUES (1011, 46900, '2018-06-10', NOW());
INSERT INTO salaries VALUES (1012, 42000, '2019-11-01', '2021-01-01'); 
INSERT INTO salaries VALUES (1012, 46000, '2021-01-01', NOW());
INSERT INTO salaries VALUES (1013, 38050, '2020-11-20', '2021-10-01');
INSERT INTO salaries VALUES (1013, 40600, '2021-10-01', NOW());
INSERT INTO salaries VALUES (1014, 24200, '2022-01-10', NOW());
INSERT INTO salaries VALUES (1015, 36250, '2022-02-01', NOW());

-- Add data to departments table
INSERT INTO departments VALUES ('d001', 'Marketing');
INSERT INTO departments VALUES ('d002', 'Finance');
INSERT INTO departments VALUES ('d003', 'Human Resources');
INSERT INTO departments VALUES ('d004', 'Production');
INSERT INTO departments VALUES ('d005', 'Development');
INSERT INTO departments VALUES ('d006', 'Sales');

-- Add departments for employees
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (1001, 'd004', '2017-02-22', '2018-01-01'); 
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (1001, 'd006', '2018-01-01', NOW());  
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (1002, 'd003', '2018-06-05', NOW()); 
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (1002, 'd002', '2020-06-14', NOW());  
-- adding more departments, but without column names, since we have all fields
INSERT INTO dept_emp VALUES (1003, 'd001', '2020-12-01', '2021-09-20');
INSERT INTO dept_emp VALUES (1003, 'd006', '2017-07-01', '2021-09-20');
INSERT INTO dept_emp VALUES (1004, 'd005', '2020-10-10', NOW());
INSERT INTO dept_emp VALUES (1004, 'd004', '2021-11-30', NOW());
INSERT INTO dept_emp VALUES (1005, 'd005', '2017-04-01', '2022-01-31');
INSERT INTO dept_emp VALUES (1006, 'd002', '2016-02-01', '2018-08-01');
INSERT INTO dept_emp VALUES (1007, 'd006', '2020-12-10', NOW());
INSERT INTO dept_emp VALUES (1007, 'd001', '2021-06-01', NOW());
INSERT INTO dept_emp VALUES (1008, 'd003', '2018-10-14', '2020-03-10');
INSERT INTO dept_emp VALUES (1009, 'd001', '2016-01-25', '2018-02-01');
INSERT INTO dept_emp VALUES (1010, 'd004', '2021-10-01', NOW());
INSERT INTO dept_emp VALUES (1010, 'd005', '2022-05-01', NOW());
INSERT INTO dept_emp VALUES (1011, 'd006', '2018-06-10', '2020-04-01');
INSERT INTO dept_emp VALUES (1011, 'd004', '20-04-01', NOW());
INSERT INTO dept_emp VALUES (1012, 'd005', '2019-11-01', NOW()); 
INSERT INTO dept_emp VALUES (1012, 'd004', '2021-01-01', NOW());
INSERT INTO dept_emp VALUES (1013, 'd004', '2020-11-20', NOW());
INSERT INTO dept_emp VALUES (1014, 'd003', '2022-01-10', NOW());
INSERT INTO dept_emp VALUES (1015, 'd006', '2022-02-01', NOW());
INSERT INTO dept_emp VALUES (1015, 'd001', '2022-02-01', NOW());

-- Add manager position for 5 employees
INSERT INTO dept_manager VALUES (1002, 'd002', '2020-06-14', NOW());
INSERT INTO dept_manager VALUES (1007, 'd001', '2021-06-01', NOW()); 
INSERT INTO dept_manager VALUES (1008, 'd003', '2018-10-14', '2020-03-10'); 
INSERT INTO dept_manager VALUES (1011, 'd004', '2021-12-01', NOW()); 
INSERT INTO dept_manager VALUES (1015, 'd006', '2022-02-01', NOW()); 

-- Add information on job titles for employees
INSERT INTO titles VALUES (1001, 'Junior Software Engineer', '2017-02-22', '2020-10-05');
INSERT INTO titles VALUES (1001, 'Senior Software Engineer', '2020-10-05', now());
INSERT INTO titles VALUES (1002, 'Human Resources Advisor', '2018-02-22', '2020-06-14');
INSERT INTO titles VALUES (1002, 'Accounting Manager', '2018-02-22', now());
INSERT INTO titles VALUES (1003, 'Sales Representative', '2017-07-01', '2021-09-20');
INSERT INTO titles VALUES (1003, 'Sales and Marketing Representative', '2020-12-01', '2021-09-20');
INSERT INTO titles VALUES (1004, 'Production Advisor', '2020-10-10', '2021-11-30');
INSERT INTO titles VALUES (1004, 'Production and Development Specialist', '2021-11-30', now());
INSERT INTO titles VALUES (1005, 'Senior Software Engineer', '2017-04-01', '2022-01-31');
INSERT INTO titles VALUES (1006, 'Accounting Clerk', '2016-02-01', '2018-08-01');
INSERT INTO titles VALUES (1007, 'Senior Sales Representative', '2020-12-10', NOW());
INSERT INTO titles VALUES (1007, 'Director of Marketing', '2021-06-01', NOW());
INSERT INTO titles VALUES (1008, 'Human Resources Manager', '2018-10-14', '2020-03-10');
INSERT INTO titles VALUES (1009, 'Marketing Analyst', '2016-01-25', '2018-02-01');
INSERT INTO titles VALUES (1010, 'Production Officer', '2021-10-01', NOW());
INSERT INTO titles VALUES (1010, 'Development and Production Advisor', '2022-05-01', NOW());
INSERT INTO titles VALUES (1011, 'Senior Accounts Representative', '2018-06-10', '2019-11-01');
INSERT INTO titles VALUES (1011, 'Sales and Production Coordinator', '2019-11-01', NOW());
INSERT INTO titles VALUES (1011, 'Production Managerx', '2021-04-01', NOW());
INSERT INTO titles VALUES (1012, 'Senior Software Engineer', '2019-11-01', NOW()); 
INSERT INTO titles VALUES (1013, 'Junior Software Engineer', '2020-11-20', NOW());
INSERT INTO titles VALUES (1014, 'Human Resources Coordinator', '2022-01-10', NOW());
INSERT INTO titles VALUES (1015, 'Junior Accounts Respresentative', '2022-02-01', NOW());
INSERT INTO titles VALUES (1015, 'Director of Marketing', '2022-02-01', NOW());

-- UPDATE employee information

-- Change the name of a specific employee
UPDATE employees SET first_name = 'Theo', last_name = 'Gregory' WHERE first_name = 'Fred' && last_name = 'Wilson' && birth_date = '1992-01-04';
-- Change the name of all departments, here using replace to avoid duplicate errors.
UPDATE departments SET dept_name = 'Marketing Department' WHERE dept_no = 'd001';
UPDATE departments SET dept_name = 'Finance Department' WHERE dept_no = 'd002';
UPDATE departments SET dept_name = 'Human Resources Department' WHERE dept_no = 'd003';
UPDATE departments SET dept_name = 'Production Department' WHERE dept_no = 'd004';
UPDATE departments SET dept_name = 'Development Department' WHERE dept_no = 'd005';
UPDATE departments SET dept_name = 'Sales Department' WHERE dept_no = 'd006';


-- SELECT / GET DATA

-- Select all employees with a salary greater than 20,000
SELECT e.first_name AS First_Name, e.last_name AS Last_Name, s.salary AS Salary FROM employees e RIGHT JOIN salaries s on e.emp_no=s.emp_no WHERE s.salary > 20000;

-- Select all employees with a salary below 10,000
SELECT e.first_name AS First_Name, e.last_name AS Last_Name, s.salary AS Salary FROM employees e RIGHT JOIN salaries s on e.emp_no=s.emp_no WHERE s.salary < 10000;

-- Select all employees who have a salary between 14.00 and 50,000
SELECT e.first_name AS First_Name, e.last_name AS Last_Name, s.salary AS Salary FROM employees e RIGHT JOIN salaries s on e.emp_no=s.emp_no WHERE s.salary > 14000 && s.salary < 50000;

-- Select the total number of employees
SELECT COUNT(DISTINCT emp_no) FROM employees;

-- Select the total number of employees who have worked in more than one department
SELECT e.first_name AS First_Name, e.last_name AS Last_Name, count(d.dept_no) AS Number_Of_Departments FROM employees e LEFT JOIN dept_emp d ON e.emp_no=d.emp_no GROUP BY e.emp_no;

-- Select the titles of the year 2020
SELECT title from titles WHERE YEAR(from_date) = 2020;
-- Select only the name of the employees in capital letters
SELECT UPPER(first_name) AS name FROM employees;

-- Select the name, surname and name of the current department of each employee
SELECT employees.first_name, employees.last_name, departments.dept_name FROM employees INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no INNER JOIN departments ON dept_emp.dept_no=departments.dept_no WHERE dept_emp.to_date=date(now());

-- Select the name, surname and number of times the employee has worked as a manager
SELECT e.first_name, e.last_name, count(DISTINCT dm.emp_no) FROM employees e RIGHT JOIN dept_manager dm ON e.emp_no=dm.emp_no GROUP BY dm.emp_no;

-- Select the name of employees without any being repeated
SELECT DISTINCT e.first_name, e.last_name FROM employees e;


-- DELETE

-- Delete all employees with a salary greater than 20,000
DELETE employees FROM employees INNER JOIN salaries ON employees.emp_no=salaries.emp_no WHERE salaries.salary > 20000;

-- Remove the department that has more employees
  -- to see the department with most employees
SELECT dept_no AS Department_Number FROM dept_emp GROUP BY dept_no ORDER BY COUNT(dept_no) DESC LIMIT 1;
  -- delete department with most employees, including all records with this dept_no
DELETE departments from departments LEFT JOIN dept_emp ON departments.dept_no=dept_emp.dept_no WHERE departments.dept_no=(SELECT dept_no AS Department_Number FROM dept_emp GROUP BY dept_no ORDER BY COUNT(dept_no) DESC LIMIT 1);
