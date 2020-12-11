CREATE TABLE IF NOT EXISTS tasks (
    task_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE,
    priority TINYINT NOT NULL DEFAULT 3,
    description TEXT,
    PRIMARY KEY (task_id)
);

/*
CREATE TABLE IF NOT EXISTS tasks (
    task_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE,
    priority TINYINT NOT NULL DEFAULT 3,
    description TEXT,
    PRIMARY KEY (task_id)
);
try to create this table again to see what will be the output.
*/


select * from tasks;

-- insert
INSERT INTO tasks(title,priority) VALUES('Learn MySQL INSERT Statement',1);
insert into tasks(task_id) values (1); -- error

-- understanding default
INSERT INTO tasks(title) VALUES('Understanding DEFAULT keyword in INSERT statement');
INSERT INTO tasks(title,priority) VALUES('Understanding DEFAULT keyword in INSERT statement',DEFAULT);

-- TeXt datatype
INSERT INTO tasks(title,priority,description) VALUES('Understanding DEFAULT keyword in INSERT statement',DEFAULT , "you will learn when you do search on your own");

-- Date datatype
INSERT INTO tasks(title, start_date, due_date) VALUES('Insert date into table','2018-01-09','2018-09-15');
INSERT INTO tasks(title,start_date,due_date)
VALUES('Use current date for the task',CURRENT_DATE(),CURRENT_DATE());

-- insert multiple rows in table , 
-- try multiple permutation & combination for insert query.