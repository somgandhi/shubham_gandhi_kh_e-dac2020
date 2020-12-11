create database ass2;
use ass2;


-- Drop table PUBLISHERS;
-- Drop table SUBJECTS;
-- Drop table AUTHORS;
-- Drop table TITLES;
-- Drop table TITLEAUTHORS;

CREATE TABLE PUBLISHERS
(
    PUBID      int(3)   PRIMARY KEY,
    PNAME      VARCHAR(30),
    EMAIL      VARCHAR(50)  UNIQUE,
    PHONE      VARCHAR(30)
);


CREATE TABLE  SUBJECTS
(
    SUBID      VARCHAR(5) PRIMARY KEY,
    SNAME      VARCHAR(30)
);


CREATE TABLE  AUTHORS
(
    AUID     int(5)  PRIMARY KEY,
    ANAME      VARCHAR(30),
    EMAIL      VARCHAR(50)  UNIQUE,
    PHONE      VARCHAR(30)
);



CREATE TABLE  TITLES
(
    TITLEID    int(5) PRIMARY KEY,
    TITLE      VARCHAR(30),
    PUBID      int(3),
    SUBID      VARCHAR(5),
    PUBDATE    DATE,
    COVER      CHAR(1)  CHECK ( COVER IN ('P','H','p','h')),
    PRICE      int(4)
	-- CONSTRAINT TITLES_PUBID_FK FOREIGN KEY (PUBID) REFERENCES PUBLISHERS(PUBID),
	-- CONSTRAINT TITLES_SUBID_FK FOREIGN KEY (SUBID) REFERENCES SUBJECTS(SUBID)
);



CREATE TABLE  TITLEAUTHORS
(
    TITLEID    int(5) ,
    AUID       int(5) ,
    IMPORTANCE int(2),
   PRIMARY KEY(TITLEID,AUID)
  
);

/*CREATE TABLE  SUBJECTS_BACKUP
(
    SUBID      VARCHAR(5) PRIMARY KEY,
    SNAME      VARCHAR(30)
);*/

 INSERT INTO SUBJECTS VALUES ('ORA','ORACLE DATABASE 10g');
 INSERT INTO SUBJECTS VALUES ('JAVA','JAVA LANGUAGE');
 INSERT INTO SUBJECTS VALUES ('JEE','JAVA ENTEPRISE EDITION');
 INSERT INTO SUBJECTS VALUES ('VB','VISUAL BASIC.NET');
 INSERT INTO SUBJECTS VALUES ('ASP','ASP.NET');



 INSERT INTO PUBLISHERS VALUES (1,'WILLEY','WDT@VSNL.NET','91-11-23260877');
 INSERT INTO PUBLISHERS VALUES (2,'WROX','INFO@WROX.COM',NULL);
 INSERT INTO PUBLISHERS VALUES (3,'TATA MCGRAW-HILL','FEEDBACK@TATAMCGRAWHILL.COM','91-11-33333322');
 INSERT INTO PUBLISHERS VALUES (4,'TECHMEDIA','BOOKS@TECHMEDIA.COM','91-11-33257660');



 INSERT INTO AUTHORS VALUES (101, 'HERBERT SCHILD','HERBERT@YAHOO.COM',NULL);
 INSERT INTO AUTHORS VALUES (102, 'JAMES GOODWILL','GOODWILL@HOTMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (103, 'DAVAID HUNTER','HUNTER@HOTMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (104, 'STEPHEN WALTHER','WALTHER@GMAIL.COM',NULL);
 INSERT INTO AUTHORS VALUES (105, 'KEVIN LONEY','LONEY@ORACLE.COM',NULL);
 INSERT INTO AUTHORS VALUES (106, 'ED. ROMANS','ROMANS@THESERVERSIDE.COM',NULL);



 INSERT INTO TITLES VALUES (1001,'ASP.NET UNLEASHED',4,'ASP','12-04-02','P',540);
 INSERT INTO TITLES VALUES (1002,'ORACLE10G COMP. REF.',3,'ORA','1-05-05','P',575);
 INSERT INTO TITLES VALUES (1003,'MASTERING EJB',1,'JEE','3-02-05','P',475);
 INSERT INTO TITLES VALUES (1004,'JAVA COMP. REF',3,'JAVA','3-04-05','P',499);
 INSERT INTO TITLES VALUES (1005,'PRO. VB.NET',2,'VB','15-06-05','P',450);



 INSERT INTO TITLEAUTHORS VALUES (1001,104,1);
 INSERT INTO TITLEAUTHORS VALUES (1002,105,1);

 INSERT INTO TITLEAUTHORS VALUES (1003,106,1);

 INSERT INTO TITLEAUTHORS VALUES (1004,101,1);

 INSERT INTO TITLEAUTHORS VALUES (1005,103,1);
 INSERT INTO TITLEAUTHORS VALUES (1005,102,2);
 show tables;
 use ass2;
 desc authors;
 
 select * from  subjects where sname = 'oracle';
 select * from subjects where sname = 'oracle';
  select * from subjects ;
  select subid from subjects where subid like 'j%';
  select sname from subjects where sname like '%net';
  select aname from authors where aname like '%er';
  select pname from publishers where pname like '%hil%';
  use ass2;

  
  select title from titles where price < 500;
  select title from titles where pubdate < '2012-04-02';
  select sname from subjects where subid = 'java' or subid = 'jee';
  select titleid from titleauthors where auid > 103;
  select * from titles where titleid =101 or price > 400;
    select * from titles where titleid =1001 and price > 400;
    
    select * from publishers where  pname in ('techmedia');
    
    select max(price) from titles;
    select avg(importance) from titleauthors;
	SELECT COUNT(AUID) FROM AUTHORS;
    select sum(price) from titles;
    
    SELECT TITLE FROM TITLES WHERE MONTH(PUBDATE)=4;
SELECT YEAR(CURDATE()) as YEAR;
SELECT MONTH(CURDATE()) as MONTH;
SELECT LAST_DAY(PUBDATE) from TITLES  where TITLE='JAVA COMP. REF';
issue    
   -- select title from titles where
   
   
   create table employee 
   ( 
   emp_id int(5) primary key ,
   emp_name char(50)
   
   );
   desc employee;
insert into employee value ( 001,'shubham');   
insert into employee value
(002,'employee');
alter table employee modify column emp_name varchar(50);
desc employee;

update employee set emp_name = 'scott' where emp_id = 002;
truncate table employee;
desc employee;
select * from employee;
select round(20.4);


   
   
   
   
   
   
    
    
    
    
    
    
    
    
    
    
    
    
  

 
 
 
 
 
 