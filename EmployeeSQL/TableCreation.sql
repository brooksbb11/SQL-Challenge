-- Create table employees
CREATE TABLE employees (
	emp_no INT NOT NULL,
	emp_title_id VARCHAR(5),
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

SELECT * FROM employees

-- Create table departments
CREATE TABLE departments(
  dept_no VARCHAR(10),
  dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments

--Create table dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
); 

SELECT * FROM dept_emp

-- Create table dept_managers
CREATE TABLE dept_manager (
 dept_no VARCHAR (10) REFERENCES departments(dept_no),
 emp_no INT,
	PRIMARY KEY(emp_no),
	CONSTRAINT FK_emp_no FOREIGN KEY (emp_no)
	REFERENCES employees (emp_no)
);

SELECT * FROM dept_manager

--Creating salaries table
CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	PRIMARY KEY(emp_no),
	CONSTRAINT FK_emp_no FOREIGN KEY (emp_no)
	REFERENCES employees (emp_no)
);

SELECT * FROM salaries

--Creating titles table
CREATE TABLE titles (
	title_id VARCHAR(5),
	title VARCHAR(20) NOT NULL,
	PRIMARY KEY (title_id)
);

SELECT * FROM titles