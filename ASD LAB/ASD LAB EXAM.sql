USE lab1;
CREATE TABLE EMPLOYEE (
	emp_no int primary key,
	e_name varchar(255) not null,
    e_address varchar(255),
    e_ph_no varchar(11),
    dept_no int,
    dept_name varchar(255),
    job_id int,
    
    designation varchar(255),
    salary int,
    experience int,
    joined_date date
);

-- answer 1
INSERT INTO employee VALUES (12, "Steve", "NY", "21203", 4, "SALES", 5, "PRESIDENT", 60000, 5, "1981-05-01");
INSERT INTO employee VALUES (13, "Tony", "LA", "222203", 4, "SALES", 5, "MGR", 45000, 5, "1981-12-03");
INSERT INTO employee VALUES (14, "Sam", "SA", "21234", 5, "IT", 5, "STAFF", 30000, 5, "1981-09-02");
INSERT INTO employee VALUES (15, "James", "NY", "2121113", 5, "IT", 5, "STAFF", 30000, 5, "1981-09-01");

-- answer 2
SELECT emp_no, e_name, experience, salary  from employee;

-- answer 3
SELECT * from employee WHERE joined_date in ("1981-05-01", "1981-12-03", "1981-12-17", "1980-01-19");

-- answer 4

-- answer 5
SELECT * FROM employee WHERE designation NOT in ("PRESIDENT", "MGR") 
ORDER BY salary ASC;