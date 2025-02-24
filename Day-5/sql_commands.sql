show databases;
-- create database IF NOT EXISTS mindsddf;
create database minds;
use minds;

create table employee(id INT primary key, name VARCHAR(100),
department VARCHAR(100), salary decimal(10,2));

desc employee;

alter table employee ADD column position VARCHAR(100);

-- insert single record using all fields
insert into employee values
(1, 'alex', 'I.T', 543323, 'Jr. Developer');

-- insert record using field name
-- need not be in order
insert into employee (id, position, department, salary,  name) values(2, 'Sr. Developer', 'I.T.', 46374, 'John');

-- if you skip any field it will take null
insert into employee (id, position,  salary,  name) values(3, 'Developer', 7878, 'David');

insert into employee (id, position, department, salary,  name) 
values(4, 'Designer', 'I.T.', 2323, 'Bob'),
(5, 'Manager', 'Sales', 37483, 'Catherine'),
(6, 'Manager','SAP', 232343, 'Jack');

-- update data
Update employee set salary = 600993 where id=4;

-- delete data
delete from employee where id=3;

-- truncate data(means it recreate table)
truncate table employee;

-- delete the entire table
drop table employee;

select * from employee;


-- let's create table using extras

create table employees(id INT primary key auto_increment, name varchar(100), position varchar(100), 
department varchar(100), salary decimal(10,2));

-- describing
describe employees;

insert into employees(name, position, department, salary) values
('Alex', 'Jr. Developer', 'I.T', 45000),
('Bob', 'Sr. Developer', 'I.T', 90000),
('Catherine', 'DBA', 'I.T', 77789),
('David', 'Financial Advisor', 'Finance', 45432),
('Alex', 'Sr. Manager', 'Sales', 47834);

delete from employees where id=4;


select * from employees;

-- single column retrieval
select name, position from employees;

-- as is not compulsory
select 1+1 as result;

select concat('John', ' ','Doe') as 'full name';

-- here it will give current date and time , today is the column name
select now() today;

select upper('Hello World') as 'Upper Case';

-- where clause
-- retrieve data of employees 

-- whose salary is more than 50000
select * from employees where salary>50000;

-- salary is equal to 100000
select * from employees where salary=100000;

-- whose id is 5
select * from employees where id=5;

-- whose name is alex
select * from employees where name='Alex';

-- whose department is IT
select * from employees where department = 'I.T';

-- order by

select * from employees order by salary asc;
-- or use this
-- select * from employees order by salary;

select * from employees order by name desc;

select * from employees order by department, salary desc;

select * from employees order by salary desc, department asc, name desc;

-- distinct
select distinct position from employees;

-- and, or
select * from employees where department='Sales' And salary>7000;

select * from employees where department='Sales' OR salary>70000;

-- in, not in

select * from employees where department IN ('Sales', 'Finance');

select * from employees where department NOT IN ('Sales', 'Finance');

-- between
select * from employees where salary BETWEEN 6000 AND 70000;

-- like
select * from employees where name LIKE 'A%';

select * from employees where position like '%dev%';

-- limit
select * from employees Limit 3;

-- is null
select * from employees where salary IS NULL;





