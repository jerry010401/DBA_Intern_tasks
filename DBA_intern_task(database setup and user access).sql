create database employee_management;
use employee_management;

create table employees(
employee_id int auto_increment primary key,
firstName varchar(20),
lastname varchar(20),
department varchar(50),
salary decimal(15,2),
joining_date date);

alter table employees
rename column firstName to  firstname;

insert into employees(
firstname,lastname,department,salary,joining_date)
values
('Sahaya','Johnson','Manager',75000,'2022-07-21'),
('Arockia','Sumathi','HR',35000,'2018-05-17'),
('Rabel','Edison','Preist',30000,'2018-09-22'),
('Antony','Kalvin','IT',1400000,'2022-03-15'),
('Jerry','Rabel','IT',60000,'2024-04-12'),
('Akash','Rolex','CA',110000,'2025-06-22'),
('Alice','Queen','IT',90000,'2025-12-25');

select * from employees;

create user 'mysqluser'@'localhost'
identified by '@Jerry0104';

SELECT user, host FROM mysql.user WHERE user='mysqluser';

ALTER USER 'mysqluser'@'localhost' IDENTIFIED BY '@Jerry0104';
GRANT ALL PRIVILEGES 
ON employee_management.* TO 'mysqluser'@'localhost';
FLUSH PRIVILEGES;
