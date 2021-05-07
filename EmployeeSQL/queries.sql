-- List the following details of each employee: employee number, last name, first name, sex, and salary.
Select employees.emp_no, employees.last_name, employees.first_name, employees.sex as gender, salaries.salary
From employees
Inner Join salaries on employees.emp_no = salaries.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
Select
	first_name,
	last_name,
	hire_date
From
	employees
Where hire_date Between to_date('1986-01-01', 'YYYY-DD-MM') And to_date('1986-31-12', 'YYYY-DD-MM');

-- List the manager of each department with the following information: department number, department name, 
-----the manager's employee number, last name, first name.
Select
	departments.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.emp_no,
	employees.last_name,
	employees.first_name
From departments
Inner Join employees on employees.emp_no = dept_manager.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

--  In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
