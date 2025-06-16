mysql> create database details;
Query OK, 1 row affected (0.01 sec)

mysql> use employee;
Database changed
mysql> create table employee(
    -> empid int primary key,
    -> name varchar(25),
    -> dept varchar(25),
    -> salary int,
    -> joindate date
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| empid    | int         | NO   | PRI | NULL    |       |
| name     | varchar(25) | YES  |     | NULL    |       |
| dept     | varchar(25) | YES  |     | NULL    |       |
| salary   | int         | YES  |     | NULL    |       |
| joindate | date        | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.02 sec)
mysql> insert into employee(empid, name, dept, salary, joindate) values
    -> (1, 'alam freed', 'finance',50000, '2023-06-12'),
    -> (2, 'henry', 'marketing',45000, '2023-02-02'),
    -> (3, 'kathir', 'marketing',20000, '2023-03-01'),
    -> (4, 'levy', 'finance',55000, '2023-05-07'),
    -> (5, 'jade', 'wd',24000, '2022-07-10'),
    -> (6, 'kein', 'hr',30000, '2022-04-06');
Query OK, 6 rows affected (0.00 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select* from employee;
+-------+------------+-----------+--------+------------+
| empid | name       | dept      | salary | joindate   |
+-------+------------+-----------+--------+------------+
|     1 | alam freed | finance   |  50000 | 2023-06-12 |
|     2 | henry      | marketing |  45000 | 2023-02-02 |
|     3 | kathir     | marketing |  20000 | 2023-03-01 |
|     4 | levy       | finance   |  55000 | 2023-05-07 |
|     5 | jade       | wd        |  24000 | 2022-07-10 |
|     6 | kein       | hr        |  30000 | 2022-04-06 |
+-------+------------+-----------+--------+------------+
6 rows in set (0.00 sec)

mysql> select* from employee where dept = 'finance';
+-------+------------+---------+--------+------------+
| empid | name       | dept    | salary | joindate   |
+-------+------------+---------+--------+------------+
|     1 | alam freed | finance |  50000 | 2023-06-12 |
|     4 | levy       | finance |  55000 | 2023-05-07 |
+-------+------------+---------+--------+------------+
2 rows in set (0.00 sec)

mysql> update employee set salary = salary + 5000 where dept = 'finance';
Query OK, 2 rows affected (0.00 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select* from employee where dept = 'finance';
+-------+------------+---------+--------+------------+
| empid | name       | dept    | salary | joindate   |
+-------+------------+---------+--------+------------+
|     1 | alam freed | finance |  55000 | 2023-06-12 |
|     4 | levy       | finance |  60000 | 2023-05-07 |
+-------+------------+---------+--------+------------+
2 rows in set (0.00 sec)
mysql> update employee set dept = 'HR' where dept = 'hr';
Query OK, 1 row affected (0.00 sec)
Rows matched: 2  Changed: 1  Warnings: 0

mysql> select* from employee;
+-------+------------+-----------+--------+------------+
| empid | name       | dept      | salary | joindate   |
+-------+------------+-----------+--------+------------+
|     1 | alam freed | finance   |  55000 | 2023-06-12 |
|     2 | henry      | marketing |  45000 | 2023-02-02 |
|     3 | kathir     | marketing |  20000 | 2023-03-01 |
|     4 | levy       | finance   |  60000 | 2023-05-07 |
|     5 | jade       | HR        |  24000 | 2022-07-10 |
|     6 | kein       | HR        |  30000 | 2022-04-06 |
+-------+------------+-----------+--------+------------+
6 rows in set (0.00 sec)
mysql> alter table employee
    -> rename column dept to department;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select*from employee;
+-------+------------+------------+--------+------------+
| empid | name       | department | salary | joindate   |
+-------+------------+------------+--------+------------+
|     1 | alam freed | finance    |  55000 | 2023-06-12 |
|     2 | henry      | marketing  |  45000 | 2023-02-02 |
|     3 | kathir     | marketing  |  20000 | 2023-03-01 |
|     4 | levy       | finance    |  60000 | 2023-05-07 |
|     5 | jade       | HR         |  24000 | 2022-07-10 |
|     6 | kein       | HR         |  30000 | 2022-04-06 |
+-------+------------+------------+--------+------------+
6 rows in set (0.00 sec)

mysql> delete from employee
    -> where empid=6;
Query OK, 1 row affected (0.01 sec)

mysql> select* from employee;
+-------+------------+------------+--------+------------+
| empid | name       | department | salary | joindate   |
+-------+------------+------------+--------+------------+
|     1 | alam freed | finance    |  55000 | 2023-06-12 |
|     2 | henry      | marketing  |  45000 | 2023-02-02 |
|     3 | kathir     | marketing  |  20000 | 2023-03-01 |
|     4 | levy       | finance    |  60000 | 2023-05-07 |
|     5 | jade       | HR         |  24000 | 2022-07-10 |
+-------+------------+------------+--------+------------+
5 rows in set (0.00 sec)

mysql> select*from employee where department='marketing' and salary < 50000;
+-------+--------+------------+--------+------------+
| empid | name   | department | salary | joindate   |
+-------+--------+------------+--------+------------+
|     2 | henry  | marketing  |  45000 | 2023-02-02 |
|     3 | kathir | marketing  |  20000 | 2023-03-01 |
+-------+--------+------------+--------+------------+
2 rows in set (0.00 sec)

mysql> select*from employee where department='finance' or department='HR';
+-------+------------+------------+--------+------------+
| empid | name       | department | salary | joindate   |
+-------+------------+------------+--------+------------+
|     1 | alam freed | finance    |  50000 | 2023-06-12 |
|     4 | levy       | finance    |  55000 | 2023-05-07 |
|     6 | kein       | HR         |  30000 | 2022-04-06 |
+-------+------------+------------+--------+------------+
3 rows in set (0.00 sec)

mysql> select*from employee order by salary desc;
+-------+------------+------------+--------+------------+
| empid | name       | department | salary | joindate   |
+-------+------------+------------+--------+------------+
|     4 | levy       | finance    |  55000 | 2023-05-07 |
|     1 | alam freed | finance    |  50000 | 2023-06-12 |
|     2 | henry      | marketing  |  45000 | 2023-02-02 |
|     6 | kein       | HR         |  30000 | 2022-04-06 |
|     5 | jade       | wd         |  24000 | 2022-07-10 |
|     3 | kathir     | marketing  |  20000 | 2023-03-01 |
+-------+------------+------------+--------+------------+
6 rows in set (0.00 sec)

mysql> select*from employee order by salary asc;
+-------+------------+------------+--------+------------+
| empid | name       | department | salary | joindate   |
+-------+------------+------------+--------+------------+
|     3 | kathir     | marketing  |  20000 | 2023-03-01 |
|     5 | jade       | wd         |  24000 | 2022-07-10 |
|     6 | kein       | HR         |  30000 | 2022-04-06 |
|     2 | henry      | marketing  |  45000 | 2023-02-02 |
|     1 | alam freed | finance    |  50000 | 2023-06-12 |
|     4 | levy       | finance    |  55000 | 2023-05-07 |
+-------+------------+------------+--------+------------+
6 rows in set (0.00 sec)