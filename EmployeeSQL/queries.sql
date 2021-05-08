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
Where hire_date Between to_date('1986-01-01', 'YYYY-DD-MM') And to_date('1986-31-12', 'YYYY-DD-MM') 
Order by hire_date Asc;


-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select
	departments.dept_no,
	departments.dept_name,
	dept_manager.emp_no,
	employees.last_name,
	employees.first_name
From departments
Join dept_manager
	on departments.dept_no = dept_manager.dept_no
Join employees
	on dept_manager.emp_no = employees.emp_no
Order by dept_name Asc;
	
	
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
Select
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
From employees
Join dept_emp
	on dept_emp.emp_no = employees.emp_no
Join departments
	on departments.dept_no = dept_emp.dept_no;


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
Select
	employees.first_name,
	employees.last_name,
	employees.sex
From employees
Where first_name = 'Hercules' and last_name Like 'B%'; 


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
From employees
Join dept_emp
	on dept_emp.emp_no = employees.emp_no
Join departments
	on departments.dept_no = dept_emp.dept_no
Where departments.dept_name = 'Sales';


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	departments.dept_name
From employees
Join dept_emp
	on dept_emp.emp_no = employees.emp_no
Join departments
	on departments.dept_no = dept_emp.dept_no
Where departments.dept_name = 'Sales' or departments.dept_name = 'Development';


--  In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select
	employees.last_name, count(employees.last_name)
From employees
Group by 1
Order by 2 desc;