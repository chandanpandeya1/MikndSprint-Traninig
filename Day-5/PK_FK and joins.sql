create database pkfk;
use pkfk;

-- create table departments
CREATE TABLE departments ( 
id INT PRIMARY KEY, 
name VARCHAR(100) 
NOT NULL);

INSERT INTO departments (id, name) 
VALUES 
(1, 'Sales'), 
(2, 'R&D'), 
(3, 'Marketing'), 
(4, 'Finance'), 
(5, 'Human Resources');

select * from departments;


-- create table employees which makes many to one relationship between department and employees
-- one department can have many employees

CREATE TABLE employees ( 
id INT PRIMARY KEY, 
name VARCHAR(100) NOT NULL, 
position VARCHAR(100) NOT NULL, 
salary DECIMAL(10, 2), 
department_id INT, 
FOREIGN KEY (department_id) 
REFERENCES departments(id));

desc employees;

INSERT INTO employees 
(id, name, position, salary, department_id) 
VALUES 
(1, 'John Doe', 'Manager', 75000.00, 1), 
(2, 'Jane Smith', 'Developer', 65000.00, 2), 
(3, 'Emily Johnson', 'Designer', 60000.00, 3), 
(4, 'Michael Brown', 'Analyst', 70000.00, 4), 
(5, 'Linda Green', 'Manager', 75000.00, 1), 
(6, 'James White', 'Developer', 65000.00, 2), 
(7, 'William Black', 'Developer', NULL, 2), 
(8, 'Mary Blue', 'HR', 50000.00, 5);

select * from employees;



-- inner join
select e.id, e.name, e.position Designation, e.salary, d.name 'Department name'
from employees e join departments d on e.department_id = d.id;
 
 
 -- lets insert one record in employee table without department_id
 insert into employees (id, name, position, salary, department_id)
 values(9, 'Test User', 'Testing', 5485, NULL);
 
 -- left join
select e.id, e.name, e.position Designation, e.salary, d.name 'Department name'
from employees e left join departments d on e.department_id = d.id;

-- let's insert one record in department 
insert into departments values(6, 'IT');


-- right join
select e.id, e.name, e.position Designation, e.salary, d.name 'Department name'
from employees e right join departments d on e.department_id = d.id;

-- full outer join
select e.id, e.name, e.position Designation, e.salary, d.name 'Department name'
from employees e left join departments d on e.department_id = d.id
union
select e.id, e.name, e.position Designation, e.salary, d.name 'Department name'
from employees e right join departments d on e.department_id = d.id;

-- union all will take the common twice
select e.id, e.name, e.position Designation, e.salary, d.name 'Department name'
from employees e left join departments d on e.department_id = d.id
union all
select e.id, e.name, e.position Designation, e.salary, d.name 'Department name'
from employees e right join departments d on e.department_id = d.id;

-- cross join
select e.id EmployeeID, e.name EmployeeName, d.id DepartmentID, d.name DepartmentName
 from employees e 
 cross join
 departments d;
 
 -- group by
 select count(*) "No. of employees", department_id
 from employees
 group by department_id;
 
 -- find out total employees based on department name
 select dep.name "Department Name", count(*) "total employees" 
 from employees emp
 join departments dep
 on emp.department_id = dep.id
 group by dep.name;
 
 -- total sum of salary based on department
  select dep.name "Department Name", sum(emp.salary) "total salary" 
 from employees emp
 join departments dep
 on emp.department_id = dep.id
 group by dep.name;
 
 -- having clause
  select dep.name "Department Name", sum(emp.salary) "total salary" 
 from employees emp
 join departments dep
 on emp.department_id = dep.id
 group by dep.name having sum(emp.salary)>100000;
 
 -- or use this
  select dep.name 'Department Name', sum(emp.salary) 'total salary'
 from employees emp
 join departments dep
 on emp.department_id = dep.id
 group by dep.name having `total salary`>100000;

-- having count
 select dep.name "Department Name", count(*) "total employees" 
 from employees emp
 join departments dep
 on emp.department_id = dep.id
 group by dep.name having `total employees`>2;
 
-- rollup

SELECT departments.name AS department, SUM(employees.salary) AS 
total_salary
FROM employees
JOIN departments ON employees.department_id = departments.id
GROUP BY (departments.name) with ROLLUP;

-- or use this
SELECT dep.name AS "department name", SUM(emp.salary) AS "total salary"
FROM employees emp
JOIN departments dep ON emp.department_id = dep.id
GROUP BY dep.name WITH ROLLUP;

