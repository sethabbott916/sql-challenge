SELECT employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
where EXTRACT(YEAR FROM employees.hire_date) = '1986';

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name
From employees
JOIN dept_manager
  ON employees.emp_no = dept_manager.emp_no
join departments
  ON dept_manager.dept_no = departments.dept_no;
  
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
JOIN dept_manager
  ON employees.emp_no = dept_manager.emp_no
join departments
  ON dept_manager.dept_no = departments.dept_no;
  
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
where (employees.first_name = 'Hercules') and (employees.last_name LIKE 'B%');

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
JOIN dept_emp
  ON employees.emp_no = dept_emp.emp_no
join departments
  ON dept_emp.dept_no = departments.dept_no
  Where (departments.dept_name = 'Sales');
  
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
JOIN dept_emp
  ON employees.emp_no = dept_emp.emp_no
join departments
  ON dept_emp.dept_no = departments.dept_no
  Where (departments.dept_name = 'Sales') or (departments.dept_name = 'Development');


Select employees.last_name, COUNT(employees.last_name)
FROM employees
group by employees.last_name
order by count(employees.last_name) desc;
