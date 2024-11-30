DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
    title_id VARCHAR(30) NOT NULL,
    title VARCHAR(30) NOT NULL,
	PRIMARY KEY (title_id)
);


CREATE TABLE employees (
	emp_no INT NOT NULL,
    emp_title_id VARCHAR(30) REFERENCES titles(title_id) NOT NULL,
    birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE salaries (
	id SERIAL,
    emp_no INT REFERENCES employees(emp_no) NOT NULL,
    salary INT NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE departments (
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
	id SERIAL,
    emp_no INT REFERENCES employees(emp_no) NOT NULL,
    dept_no VARCHAR(30) REFERENCES departments(dept_no) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE dept_manager (
	id SERIAL,
    dept_no VARCHAR(30) REFERENCES departments(dept_no) NOT NULL,
    emp_no INT REFERENCES employees(emp_no) NOT NULL,
	PRIMARY KEY (id)
);





