use employees;

-- 1 Retrieve the first name, last name, and job title of all employees
select first_name, last_name, title from employees 
join titles 
where employees.emp_no = titles.emp_no; 

-- 2 Find all employees who work in the Sales department.
SELECT e.first_name, e.last_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';


-- 3 Calculate the average salary of all employees.
select avg(s.salary) "Average salary"
from employees e join salaries s 
on
e.emp_no = s.emp_no;

-- 4 Find the total number of employees in each department
select dp.dept_name, count(*)
from employees e 
join dept_emp d on e.emp_no = d.emp_no 
join departments dp on d.dept_no = dp.dept_no 
group by(dp.dept_name);

-- or
select count(emp_no) 'Total Number of Emp', d.dept_name 'Department Name'
from departments d
join dept_emp dmp
on d.dept_no = dmp.dept_no
group by (`Department Name`);

-- 5 list departments with more than 5 employees
select dp.dept_name as 'Department Name'
from employees as e join dept_emp as d on e.emp_no = d.emp_no 
join departments as dp on d.dept_no = dp.dept_no 
group by(dp.dept_name) 
having count(*) > 5;

-- 6 List all employees and the names of their managers
select e.emp_no employee_id, e.first_name employee_first_name, e.last_name employee_last_name, 
m.emp_no manager_id, m.first_name manager_first_name, m.last_name manager_last_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join dept_manager dm on de.dept_no = dm.dept_no
join employees m on dm.emp_no = m.emp_no;


-- 7 Find all employees who work in the 'Marketing' or 'Finance' departments.
select e.emp_no, e.first_name, e.last_name, d.dept_name
 from employees e 
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no 
where dept_name = 'Marketing' or dept_name='Finance';

-- 11 Find the number of Male and Female employees in the database and the order count in descending order
select gender, count(*) as employee_count from employees 
group by gender
order by employee_count desc;

-- 12 Find the Average salary by employee title and order by descending order
select t.title, avg(s.salary) as avg_salary
from salaries s
join titles t
on s.emp_no = t.emp_no
group by t.title
order by avg_salary desc;

-- 13 List first 5 employees (id,fname,lname,department name) alog with their department names
select e.emp_no, e.first_name, e.last_name, d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
order by e.emp_no
limit 5;

-- 14 Display firstname, lastname,salary of the highest payed employee.
select e.first_name, e.last_name, s.salary
from employees e
join salaries s on e.emp_no = s.emp_no
order by s.salary desc
limit 1;

-- 15 second highest payed employe
select e.first_name, e.last_name, s.salary
from employees e
join salaries s on e.emp_no = s.emp_no
order by s.salary desc
limit 1 offset 1;



