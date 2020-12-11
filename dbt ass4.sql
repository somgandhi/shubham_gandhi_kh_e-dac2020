create database ass4;
use ass3;
select dept_name,empname from employee_table join department_table1 on  department_table1.dept_id = employee_table.dept_id;
select * from employee_table join department_table1 on employee_table.dept_id=department_table1.dept_id;
select employee_table.dept_id,sum(salary) from employee_table join department_table1 on  department_table1.dept_id = employee_table.dept_id group by dept_id;
SELECT D.DEPT_NAME, E.EMP_NAME FROM EMPLOYEE E RIGHT OUTER JOIN DEPARTMENT D ON E.DEPT_ID=D.DEPT_ID; 
SELECT D.DEPT_NAME, E.EMP_NAME FROM EMPLOYEE E LEFT OUTER JOIN DEPARTMENT D ON E.DEPT_ID=D.DEPT_ID; 
SELECT E.EMP_NAME , M.NAME AS MANAGER FROM EMPLOYEE  E JOIN MANAGER M ON E.MANAGER=M.MAN_ID;
SELECT E.EMP_NAME , D.DEPT_NAME AS DEPARTMENT FROM EMPLOYEE  E JOIN DEPARTMENT D ON E.DEPT_ID=D.DEPT_ID;


 CREATE TABLE EMP1 (EMP_ID INT PRIMARY KEY, EMP_NAME VARCHAR(10));
INSERT INTO EMP1  VALUES(1,'A'),(2,'B'),(3,'C');

create table emp2 as select * from emp1;
select * from emp1;
insert into emp2 values (4,'D');
insert into emp1 values (5,'E');
select * from emp1 union select * from emp2;
select * from emp1 union all select * from emp2;


select empname from employee_table where salary=(select salary from employee_table where empname='arun') and empname not like 'arun';
select empname from employee_table where dept_id=(select dept_id from employee_table where empname='arun') ;
SELECT EMP_NAME FROM EMPLOYEE WHERE SALARY=(SELECT SALARY FROM EMPLOYEE ORDER BY SALARY LIMIT 1 );
UPDATE  EMPLOYEE SET SALARY=15000  WHERE DEPT_ID = (select dept_id from(SELECT DEPT_ID FROM employee  WHERE EMP_NAME='Max') as a) and EMP_NAME!='Max';





