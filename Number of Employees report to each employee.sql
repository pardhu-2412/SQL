Create table If Not Exists Employees(employee_id int, name varchar(20), reports_to int, age int)
Truncate table Employees
insert into Employees (employee_id, name, reports_to, age) values ('9', 'Hercy', NULL, '43')
insert into Employees (employee_id, name, reports_to, age) values ('6', 'Alice', '9', '41')
insert into Employees (employee_id, name, reports_to, age) values ('4', 'Bob', '9', '36')
insert into Employees (employee_id, name, reports_to, age) values ('2', 'Winston', NULL, '37')
# Write your MySQL query statement below
select E.employee_id,E.name,count(R.reports_to) as reports_count,round(avg(R.age)) as average_age from Employees E JOIN Employees R
where E.employee_id=R.reports_to
group by E.employee_id
order by E.employee_id
