create database employee;

use employee;



create table departments (
    department_id int primary key ,
    department_name varchar (100) not null unique
    );


create table location (
	location_id int auto_increment primary key	,
    location_name varchar(100) not null unique
    );
    
    


create table employee (
    employee_id int primary key ,
    employee_name varchar (100) not null,
    gender char (1) check (gender in ('m','f')),
    age int check (age >=18),
    designation varchar (100),
    hire_date date default ( current_date),
    department_id int,
    location_id int ,
    foreign key (department_id) references departments(department_id),
    foreign key (location_id ) references location (location_id)
    );
    
    show tables;
    

alter table employee
add email  varchar (150);


ALTER TABLE Employee
MODIFY designation VARCHAR(200);



alter table employee
rename column hire_date to date_of_joining;


rename table Departments to Department_info;


rename table Location to Locations;


truncate table employee;

drop table  employee ;


drop database employee;


