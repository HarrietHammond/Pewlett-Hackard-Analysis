-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
	
	)
SELECT * FROM departments;

CREATE TABLE employees (	 
	emp_no VARCHAR(8) NOT NULL,
	birth_date VARCHAR(40) NOT NULL, 
	first_name VARCHAR(40) NOT NULL, 
	last_name VARCHAR(40) NOT NULL,
	gender VARCHAR(40) NOT NULL,
	hire_date VARCHAR(40) NOT NULL, 
	PRIMARY KEY (emp_no)
	 
    );
	
CREATE TABLE dept_manager (
dept_no VARCHAR(4) NOT NULL,
    emp_no VARCHAR(40) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    PRIMARY KEY (emp_no, dept_no)

) 

CREATE TABLE salaries (
  emp_no VARCHAR(8) NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
emp_no VARCHAR(8) NOT NULL,
    title VARCHAR(40) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no, title, from_date)
	
)
SELECT * FROM titles;

CREATE TABLE dept_emp (
emp_no VARCHAR(10) NOT NULL,
    dept_no VARCHAR(6) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    
	
PRIMARY KEY (emp_no, dept_no)

);		
SELECT * FROM dept_emp;



SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';


SELECT * 
FROM employees
WHERE birth_date BETWEEN '1/1/1952' AND '12/31/1952';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1/1/1952' AND '12/31/1952';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1/1/1953' AND '12/31/1953';

SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1/1/1954' AND '12/31/1954';


SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1/1/1955' AND '12/31/1955';

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1/1/1952' AND '1/1/1955';


-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1/1/1952' AND '12/31/1955') 
AND (hire_date BETWEEN '1/1/1985' AND '12/31/1988');


-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1/1/1952' AND '12/31/1955')
AND (hire_date BETWEEN '1/1/1985' AND '12/31/1988');


SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');



-- Number of employees retiring
SELECT COUNT(last_name)
FROM employees
WHERE (birth_date BETWEEN '1/1/1952' AND '12/31/1955')
AND (hire_date BETWEEN '1/1/1985' AND '12/31/1988');


SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1/1/1952' AND '12/31/1955')
AND (hire_date BETWEEN '1/1/1985' AND '12/31/1988');

SELECT * FROM retirement_info;

