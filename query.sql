
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        emp.gender,
		sal.salary
FROM employees as emp
LEFT JOIN salaries as sal
ON (emp.emp_no=sal.emp_no)
ORDER BY emp.emp_no;

--2List employees who were hired in1986

SELECT	last_name,
		first_name,
		hire_date
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31';

--3. List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.	

SELECT  dm.dept_no,
		d.dept_name,
		dm.emp_no,
		emp.last_name,
		emp.first_name,
		dm.from_date,
		dm.last_date
FROM dept_manager as dm
JOIN departments as d
ON (dm.dept_no=d.dept_no)
JOIN employees as emp
ON (dm.emp_no=emp.emp_no);

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM employees as e 
JOIN dept_emp as de
ON (e.emp_no=de.emp_no)
JOIN departments as d 
ON (de.dept_no=d.dept_no);

--5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, 
		last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM employees as e 
JOIN dept_emp as de 
ON (e.emp_no=de.emp_no)
JOIN departments as d 
ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales';

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
--multiple condition use IN
SELECT e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM employees as e 
JOIN dept_emp as de 
ON (e.emp_no=de.emp_no)
JOIN departments as d 
ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development');

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT (last_name)
FROM employees 
GROUP BY last_name
ORDER BY COUNT (last_name) DESC;



		
		



		
		