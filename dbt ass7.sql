

CREATE TABLE  Ord_master(Ord_no INT primary KEY, Cust_cd VARCHAR(20),Status CHAR);
CREATE TABLE  Ord_dtl(Ord_no INT,Prod_cd VARCHAR(20),Qty INT3,CONSTRAINT FK foreign key(Ord_no) references Ord_master(Ord_no));
CREATE TABLE  Prod_master( Prod_cd varchar(10) primary KEY,Prod_name VARCHAR(20), Qty_in_stock INT4,Booked_qty INT4);
insert into Ord_master values(1,'C1','P');
insert into Ord_dtl values(1,'P1',100),(1,'P2',200);
insert into Prod_master values('P1','Floppies',10000,1000),('P2','Printers',5000,600),('P3','Modems',3000,200);
-- SELECT * FROM Ord_master;
-- SELECT * FROM Ord_dtl;
SELECT * FROM Prod_master;
-- q1
delimiter $$
CREATE TRIGGER QUE1 BEFORE INSERT ON Ord_dtl
FOR EACH ROW 
BEGIN
UPDATE Prod_master SET Booked_qty=Booked_qty + NEW.Qty WHERE  Prod_cd=NEW.Prod_cd;
END$$
insert into Ord_dtl values(1,'P3',100);
-- delete from Ord_dtl where Prod_cd='P3'

--q2
delimiter $$
CREATE TRIGGER QUE2 AFTER DELETE ON Ord_dtl
FOR EACH ROW 
BEGIN
UPDATE Prod_master SET Booked_qty=Booked_qty - OLD.Qty WHERE  Prod_cd=OLD.Prod_cd;
END$$

CREATE TABLE dept_sal (dept_no INT , tota_salary INT4); 

INSERT INTO DEPT_SAL VALUES(30,1950),(10,12000)
-- SELECT * FROM EMP;
-- SELECT * FROM DEPT_SAL;

-- q3
delimiter $$
CREATE TRIGGER QUE3 AFTER INSERT ON EMP
FOR EACH ROW
BEGIN
UPDATE DEPT_SAL SET tota_salary=tota_salary + NEW.SAL WHERE DEPT_NO=NEW.DEPTNO;
END$$
-- INSERT INTO EMP values(1007 , 'MEGHANA', 'DEVELOPER', 1006 ,  '2019-02-18', 5000, 30 );

-- q4
delimiter $$
CREATE TRIGGER QUE4 AFTER DELETE ON EMP
FOR EACH ROW
BEGIN
UPDATE DEPT_SAL SET tota_salary=tota_salary - OLD.SAL WHERE DEPT_NO=OLD.DEPTNO;
END$$
-- DELETE FROM EMP WHERE EMPNO=1007