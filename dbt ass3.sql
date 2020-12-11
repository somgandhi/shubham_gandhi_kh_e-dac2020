create database ass3;
use ass3;
create table department_table1
( dept_id int(1) primary key ,
dept_name char(10)
-- constraint pk_id primary key (dept_id)--
-- primary key(dept_id)
);
insert into department_table1 value(1,'finance');
insert into department_table1 value(2,'training');
insert into department_table1 value(3,'marketing');

create table employee_table
( empid int(1) ,
empname char(20),
dept_id int(1),
salary int(10),
manager char(10),
constraint pk primary key (empid),
constraint fk foreign key(dept_id) references department_table1 ( dept_id)
);
-- alter table Persion drop CONSTRAINT <constraint_name>
alter table employee_table add primary key (empid);
desc employee_table;
insert into employee_table value(1,'arun',1,8000,'dhgod');
insert into employee_table value(2,'kiran',1,7000,1);
insert into employee_table value(3,'scott',1,3000,1);
insert into employee_table value(4,'max',2,9000,'');
insert into employee_table value(5,'jack',2,8000,4);
insert into employee_table value(6,'king',1,6000,1);
use ass3;
 select salary from employee_table order by empname desc;
 select * from employee_table;
 select * from department_table1;
 update employee_table set manager = 4 where empid = 1;
 
  select salary from employee_table order by salary desc;
  select salary from employee_table order by salary ;
  
  select *,sum(salary), dept_id from employee_table group by dept_id;
  select dept_id ,sum(salary)  from employee_table where salary > 17000 group by dept_id;
  
  select dept_id , sum(salary) from employee_table group by dept_id having sum(salary) > 18000;
  SELECT DEPT_ID, SUM(SALARY) FROM EMPLOYEE_table GROUP BY DEPT_ID HAVING sum(SALARY) <20000;
  