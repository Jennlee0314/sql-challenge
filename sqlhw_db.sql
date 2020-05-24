

CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(30) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);
SELECT * FROM dept_emp;

CREATE TABLE dept_manager (
    dept_no VARCHAR(30) NOT NUll,
    emp_no INTEGER,
    from_date date NOT NULL,
    to_date date NOT NULL
);

DROP TABLE dept_
SELECT * FROM dept_manager;


CREATE TABLE employees (
    emp_no INTEGER,
    birth_date date NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    hire_date date NOT NULL

);
SELECT * FROM employees;

CREATE TABLE salaries (
    emp_no INTEGER,
    salary INTEGER,
    from_date date NOT NULL,
    to_date date NOT NULL

);
SELECT * FROM salaries;


CREATE TABLE titles (
    emp_no INTEGER,
    title VARCHAR(30) NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);

SELECT * FROM titles;

