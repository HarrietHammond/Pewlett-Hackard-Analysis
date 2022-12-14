-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
	
	)
	
CREATE TABLE employees (	 
	emp_no VARCHAR(4) NOT NULL,
	birth_date VARCHAR(40) NOT NULL, 
	first_name VARCHAR(40) NOT NULL, 
	last_name VARCHAR(40) NOT NULL,
	gender VARCHAR(40) NOT NULL,
	hire_date VARCHAR(40) NOT NULL, 
	PRIMARY KEY (emp_no), 
	UNIQUE (birth_date)  
	
	)
	
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
  emp_no VARCHAR(4) NOT NULL,
  salary INT NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  PRIMARY KEY (emp_no)
)

CREATE TABLE titilesles (
title VARCHAR(4) NOT NULL,
    emp_no VARCHAR(40) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no, title)
	
)
SELECT * FROM titiles;

CREATE TABLE dept_emp (
dept_no VARCHAR(4) NOT NULL,
    emp_no VARCHAR(40) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    PRIMARY KEY (emp_no, dept_no)

)		
SELECT * FROM dept_emp;