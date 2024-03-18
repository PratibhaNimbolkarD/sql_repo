USE ecommerce;

CREATE TABLE dept_tabl(
id_deptname VARCHAR(50),
emp_name VARCHAR(50),
salary INT
);


INSERT INTO dept_tabl VALUES ('1111-MATH', 'RAHUL', 10000), 
('1111-MATH', 'RAKESH', 20000), 
('2222-SCIENCE', 'AKASH', 10000), 
('222-SCIENCE', 'ANDREW', 10000), 
('22-CHEM', 'ANKIT', 25000), 
('3333-CHEM', 'SONIKA', 12000), 
('4444-BIO', 'HITESH', 2300), 
('44-BIO', 'AKSHAY', 10000);



SELECT * from dept_tabl;

SELECT SUBSTRING(id_deptname , CHARINDEX('-' , id_deptname)+1 , LEN(id_deptname)) AS dept_name ,
SUM(salary) AS total_salary
FROM
    dept_tabl
GROUP BY id_deptname;