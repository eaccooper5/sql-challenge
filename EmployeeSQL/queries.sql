# List the employee number, last name, first name, sex, and salary of each employee.

SELECT employees.emp_no,
    employees.last_name,
    employees.first_name,
    employees.sex,
    salaries.salary
FROM employees
LEFT JOIN salary ON employees.emp_no = salary.emp_no;


#List the first name, last name, and hire date for the employees who were hired in 1986.

SELECT first_name, 
    last_name, 
    hire_date
FROM employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date ASC;



#List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.dept_no, 
    departments.dept_name, 
    dept_manager.emp_no, 
    employees.last_name, 
    employees.first_name
FROM dept_manager
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
ORDER BY departments.dept_name ASC;


#List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT employees.emp_no, 
    employees.last_name, 
    employees.first_name, 
    departments.dept_name
FROM employees
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
ORDER BY departments.dept_name ASC;


#List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT first_name, 
    last_name, 
    sex 
FROM employees
WHERE first_name = 'HERCULES' AND last_name LIKE 'B%'
ORDER BY last_name ASC;

#List each employee in the Sales department, including their employee number, last name, and first name.

SELECT employees.emp_no, 
    employees.last_name, 
    employees.first_name, 
    departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

#List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT  employees.employee_no, 
    employes.last_name, 
    employees.first_name, 
    departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' or departments.dept_name = 'Development'
ORDER BY departments.dept_name ASC;

#List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

SELECT last_name, count(emp_no) as number_emp_with_shared_last_names
FROM employes
GROUP BY last_name
ORDER BY number_emp_with_shared_last_names