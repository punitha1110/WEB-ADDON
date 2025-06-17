1. To count students per course:
  
CREATE TABLE Student (
  Sid int,
  Sname varchar(15),
  Scourse varchar(10),
  Sdept varchar(10)
);

-- insert
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (1, 'Adam','computer' ,'Salesman');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (2, 'David','science' ,'manager');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (3, 'Amar','maths' ,'Salesman');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (4, 'ivara','english' ,'clerk');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (5, 'shivi','cs' ,'clerk');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (6, 'sneha','maths' ,'manager');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (7, 'Aishu','english' ,'Salesman');
INSERT INTO Student(Sid,Sname,Scourse,Sdept) VALUES (8, 'Amala','science' ,'President');


--fetch
select Scourse, count(*) as total_students
from Student
group by Scourse;

Output:

+----------+----------------+
| Scourse  | total_students |
+----------+----------------+
| computer |              1 |
| science  |              2 |
| maths    |              2 |
| english  |              2 |
| cs       |              1 |
+----------+----------------+


2..  To calculate average salary by dept.

-- create
CREATE TABLE Employee (
  EmpId int,
  Ename varchar(15),
  Edept varchar(10),
  Esalary int
);


INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (1, 'David', 'Accounting', 50000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (2, 'Amar', 'Salesman', 25000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (3, 'Deva', 'Clerk', 35000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (4, 'Bhavya', 'Manager', 45000);
INSERT INTO Employee(EmpId,Ename,Edept,Esalary) VALUES (5, 'Charu', 'Clerk', 33000);

-- fetch 
SELECT Edept, avg(Esalary) as average_salary
FROM Employee
group by Edept;


Output:

+------------+----------------+
| Edept      | average_salary |
+------------+----------------+
| Accounting |     50000.0000 |
| Salesman   |     25000.0000 |
| Clerk      |     34000.0000 |
| Manager    |     45000.0000 |
+------------+----------------+


3. Max/Min product price.

CREATE TABLE Product (
  PrId int,
  Prname varchar(15),
  Prprice int
);


INSERT INTO Product(PrId,Prname,Prprice) VALUES (1, 'clothes', 5000);
INSERT INTO Product(PrId,Prname,Prprice) VALUES (2, 'earphones', 2500);
INSERT INTO Product(PrId,Prname,Prprice) VALUES (3, 'vegetables', 350);
INSERT INTO Product(PrId,Prname,Prprice) VALUES (4, 'fruits', 400);
INSERT INTO Product(PrId,Prname,Prprice) VALUES (5, 'phone', 70000);

-- fetch 
SELECT Prname, Prprice
FROM Product
WHERE Prprice = (SELECT MAX(Prprice) FROM Product);

Output:

+--------+---------+
| Prname | Prprice |
+--------+---------+
| phone  |   70000 |
+--------+---------+

// to find minimum price

SELECT Prname, Prprice
FROM Product
WHERE Prprice = (SELECT Min(Prprice) FROM Product);

Output:

+------------+---------+
| Prname     | Prprice |
+------------+---------+
| vegetables |     350 |
+------------+---------+
