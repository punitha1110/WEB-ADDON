mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| details            |
| emp                |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
7 rows in set (0.00 sec)

mysql> use college;
Database changed 
mysql> create table student(
    -> sname varchar(50),
    -> sroll int,
    -> semail varchar(50),
    -> snum int,
    -> sdep varchar(20)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> create database employee;
Query OK, 1 row affected (0.01 sec)

mysql> use employee;
Database changed
mysql> CREATE TABLE emp (
    ->   empno decimal(4,0) NOT NULL,
    ->   ename varchar(10) default NULL,
    ->   job varchar(9) default NULL,
    ->   mgr decimal(4,0) default NULL,
    ->   hiredate date default NULL,
    ->   sal decimal(7,2) default NULL,
    ->   comm decimal(7,2) default NULL,
    ->   deptno decimal(2,0) default NULL
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DROP TABLE IF EXISTS dept;
Query OK, 0 rows affected, 1 warning (0.00 sec)

mysql>
mysql> CREATE TABLE dept (
    ->   deptno decimal(2,0) default NULL,
    ->   dname varchar(14) default NULL,
    ->   loc varchar(13) default NULL
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');
Query OK, 1 row affected (0.00 sec)

mysql>
mysql> INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('30','SALES','CHICAGO');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');
Query OK, 1 row affected (0.00 sec)

mysql> select * from employee;
ERROR 1146 (42S02): Table 'employee.employee' doesn't exist
mysql> select * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> ALTER TABLE emp CHANGE empno empid decimal(4,0);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empid | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> ALTER TABLE emp CHANGE hiredate joindate date;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empid | ename  | job       | mgr  | joindate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> ALTER TABLE employees DROP COLUMN age;
ERROR 1146 (42S02): Table 'employee.employees' doesn't exist
mysql> ALTER TABLE emp DROP COLUMN mgr;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+--------+-----------+------------+---------+---------+--------+
| empid | ename  | job       | joindate   | sal     | comm    | deptno |
+-------+--------+-----------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> alter table emp DROP COLUMN job;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+--------+------------+---------+---------+--------+
| empid | ename  | joindate   | sal     | comm    | deptno |
+-------+--------+------------+---------+---------+--------+
|  7369 | SMITH  | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> alter table emp DROP COLUMN deptno;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+--------+------------+---------+---------+
| empid | ename  | joindate   | sal     | comm    |
+-------+--------+------------+---------+---------+
|  7369 | SMITH  | 1980-12-17 |  800.00 |    NULL |
|  7499 | ALLEN  | 1981-02-20 | 1600.00 |  300.00 |
|  7521 | WARD   | 1981-02-22 | 1250.00 |  500.00 |
|  7566 | JONES  | 1981-04-02 | 2975.00 |    NULL |
|  7654 | MARTIN | 1981-09-28 | 1250.00 | 1400.00 |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 |    NULL |
|  7782 | CLARK  | 1981-06-09 | 2450.00 |    NULL |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 |    NULL |
|  7839 | KING   | 1981-11-17 | 5000.00 |    NULL |
|  7844 | TURNER | 1981-09-08 | 1500.00 |    0.00 |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 |    NULL |
|  7900 | JAMES  | 1981-12-03 |  950.00 |    NULL |
|  7902 | FORD   | 1981-12-03 | 3000.00 |    NULL |
|  7934 | MILLER | 1982-01-23 | 1300.00 |    NULL |
+-------+--------+------------+---------+---------+
14 rows in set (0.00 sec)

mysql> alter table emp
    -> add dept varchar(50);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+--------+------------+---------+---------+------+
| empid | ename  | joindate   | sal     | comm    | dept |
+-------+--------+------------+---------+---------+------+
|  7369 | SMITH  | 1980-12-17 |  800.00 |    NULL | NULL |
|  7499 | ALLEN  | 1981-02-20 | 1600.00 |  300.00 | NULL |
|  7521 | WARD   | 1981-02-22 | 1250.00 |  500.00 | NULL |
|  7566 | JONES  | 1981-04-02 | 2975.00 |    NULL | NULL |
|  7654 | MARTIN | 1981-09-28 | 1250.00 | 1400.00 | NULL |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 |    NULL | NULL |
|  7782 | CLARK  | 1981-06-09 | 2450.00 |    NULL | NULL |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 |    NULL | NULL |
|  7839 | KING   | 1981-11-17 | 5000.00 |    NULL | NULL |
|  7844 | TURNER | 1981-09-08 | 1500.00 |    0.00 | NULL |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 |    NULL | NULL |
|  7900 | JAMES  | 1981-12-03 |  950.00 |    NULL | NULL |
|  7902 | FORD   | 1981-12-03 | 3000.00 |    NULL | NULL |
|  7934 | MILLER | 1982-01-23 | 1300.00 |    NULL | NULL |
+-------+--------+------------+---------+---------+------+
14 rows in set (0.00 sec)

mysql> update emp set dept="finance";
Query OK, 14 rows affected (0.01 sec)
Rows matched: 14  Changed: 14  Warnings: 0

mysql> select * from emp;
+-------+--------+------------+---------+---------+---------+
| empid | ename  | joindate   | sal     | comm    | dept    |
+-------+--------+------------+---------+---------+---------+
|  7369 | SMITH  | 1980-12-17 |  800.00 |    NULL | finance |
|  7499 | ALLEN  | 1981-02-20 | 1600.00 |  300.00 | finance |
|  7521 | WARD   | 1981-02-22 | 1250.00 |  500.00 | finance |
|  7566 | JONES  | 1981-04-02 | 2975.00 |    NULL | finance |
|  7654 | MARTIN | 1981-09-28 | 1250.00 | 1400.00 | finance |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 |    NULL | finance |
|  7782 | CLARK  | 1981-06-09 | 2450.00 |    NULL | finance |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 |    NULL | finance |
|  7839 | KING   | 1981-11-17 | 5000.00 |    NULL | finance |
|  7844 | TURNER | 1981-09-08 | 1500.00 |    0.00 | finance |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 |    NULL | finance |
|  7900 | JAMES  | 1981-12-03 |  950.00 |    NULL | finance |
|  7902 | FORD   | 1981-12-03 | 3000.00 |    NULL | finance |
|  7934 | MILLER | 1982-01-23 | 1300.00 |    NULL | finance |
+-------+--------+------------+---------+---------+---------+
14 rows in set (0.00 sec)
 
mysql> update emp set dept="Developer"
    -> where empid=7782;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+-------+--------+------------+---------+---------+-----------+
| empid | ename  | joindate   | sal     | comm    | dept      |
+-------+--------+------------+---------+---------+-----------+
|  7369 | SMITH  | 1980-12-17 |  800.00 |    NULL | finance   |
|  7499 | ALLEN  | 1981-02-20 | 1600.00 |  300.00 | finance   |
|  7521 | WARD   | 1981-02-22 | 1250.00 |  500.00 | finance   |
|  7566 | JONES  | 1981-04-02 | 2975.00 |    NULL | finance   |
|  7654 | MARTIN | 1981-09-28 | 1250.00 | 1400.00 | finance   |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 |    NULL | finance   |
|  7782 | CLARK  | 1981-06-09 | 2450.00 |    NULL | Developer |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 |    NULL | finance   |
|  7839 | KING   | 1981-11-17 | 5000.00 |    NULL | finance   |
|  7844 | TURNER | 1981-09-08 | 1500.00 |    0.00 | finance   |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 |    NULL | finance   |
|  7900 | JAMES  | 1981-12-03 |  950.00 |    NULL | finance   |
|  7902 | FORD   | 1981-12-03 | 3000.00 |    NULL | finance   |
|  7934 | MILLER | 1982-01-23 | 1300.00 |    NULL | finance   |
+-------+--------+------------+---------+---------+-----------+
14 rows in set (0.00 sec)

mysql> update emp set dept="Manager"
    -> where empid=7369;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> alter table emp DROP COLUMN comm;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+-------+--------+------------+---------+-----------+
| empid | ename  | joindate   | sal     | dept      |
+-------+--------+------------+---------+-----------+
|  7369 | SMITH  | 1980-12-17 |  800.00 | Manager   |
|  7499 | ALLEN  | 1981-02-20 | 1600.00 | finance   |
|  7521 | WARD   | 1981-02-22 | 1250.00 | finance   |
|  7566 | JONES  | 1981-04-02 | 2975.00 | finance   |
|  7654 | MARTIN | 1981-09-28 | 1250.00 | finance   |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 | finance   |
|  7782 | CLARK  | 1981-06-09 | 2450.00 | Developer |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 | finance   |
|  7839 | KING   | 1981-11-17 | 5000.00 | finance   |
|  7844 | TURNER | 1981-09-08 | 1500.00 | finance   |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 | finance   |
|  7900 | JAMES  | 1981-12-03 |  950.00 | finance   |
|  7902 | FORD   | 1981-12-03 | 3000.00 | finance   |
|  7934 | MILLER | 1982-01-23 | 1300.00 | finance   |
+-------+--------+------------+---------+-----------+
14 rows in set (0.00 sec)

mysql> update emp set dept="Markting"
    -> where empid=7521;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+-------+--------+------------+---------+-----------+
| empid | ename  | joindate   | sal     | dept      |
+-------+--------+------------+---------+-----------+
|  7369 | SMITH  | 1980-12-17 |  800.00 | Manager   |
|  7499 | ALLEN  | 1981-02-20 | 1600.00 | finance   |
|  7521 | WARD   | 1981-02-22 | 1250.00 | Markting  |
|  7566 | JONES  | 1981-04-02 | 2975.00 | finance   |
|  7654 | MARTIN | 1981-09-28 | 1250.00 | finance   |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 | finance   |
|  7782 | CLARK  | 1981-06-09 | 2450.00 | Developer |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 | finance   |
|  7839 | KING   | 1981-11-17 | 5000.00 | finance   |
|  7844 | TURNER | 1981-09-08 | 1500.00 | finance   |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 | finance   |
|  7900 | JAMES  | 1981-12-03 |  950.00 | finance   |
|  7902 | FORD   | 1981-12-03 | 3000.00 | finance   |
|  7934 | MILLER | 1982-01-23 | 1300.00 | finance   |
+-------+--------+------------+---------+-----------+
14 rows in set (0.00 sec)

mysql> update emp set dept="Markting"
    -> where empid=7566;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0


mysql> select * from emp;
+-------+--------+------------+---------+-----------+
| empid | ename  | joindate   | sal     | dept      |
+-------+--------+------------+---------+-----------+
|  7369 | SMITH  | 1980-12-17 |  800.00 | Manager   |
|  7499 | ALLEN  | 1981-02-20 | 1600.00 | finance   |
|  7521 | WARD   | 1981-02-22 | 1250.00 | Markting  |
|  7566 | JONES  | 1981-04-02 | 2975.00 | Markting  |
|  7654 | MARTIN | 1981-09-28 | 1250.00 | finance   |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 | finance   |
|  7782 | CLARK  | 1981-06-09 | 2450.00 | Developer |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 | finance   |
|  7839 | KING   | 1981-11-17 | 5000.00 | finance   |
|  7844 | TURNER | 1981-09-08 | 1500.00 | finance   |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 | finance   |
|  7900 | JAMES  | 1981-12-03 |  950.00 | finance   |
|  7902 | FORD   | 1981-12-03 | 3000.00 | Markting  |
|  7934 | MILLER | 1982-01-23 | 1300.00 | finance   |
+-------+--------+------------+---------+-----------+
14 rows in set (0.00 sec)

mysql> update emp set dept="Markting"
    -> where empid=7876;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0


mysql> select * from emp;
+-------+--------+------------+---------+-----------+
| empid | ename  | joindate   | sal     | dept      |
+-------+--------+------------+---------+-----------+
|  7369 | SMITH  | 1980-12-17 |  800.00 | Manager   |
|  7499 | ALLEN  | 1981-02-20 | 1600.00 | finance   |
|  7521 | WARD   | 1981-02-22 | 1250.00 | Markting  |
|  7566 | JONES  | 1981-04-02 | 2975.00 | Markting  |
|  7654 | MARTIN | 1981-09-28 | 1250.00 | finance   |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 | finance   |
|  7782 | CLARK  | 1981-06-09 | 2450.00 | Developer |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 | finance   |
|  7839 | KING   | 1981-11-17 | 5000.00 | finance   |
|  7844 | TURNER | 1981-09-08 | 1500.00 | Developer |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 | Developer |
|  7900 | JAMES  | 1981-12-03 |  950.00 | finance   |
|  7902 | FORD   | 1981-12-03 | 3000.00 | Markting  |
|  7934 | MILLER | 1982-01-23 | 1300.00 | finance   |
+-------+--------+------------+---------+-----------+
14 rows in set (0.00 sec)

mysql> update emp set ename="Taeshi"
    -> where empid=7369;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+-------+--------+------------+---------+-----------+
| empid | ename  | joindate   | sal     | dept      |
+-------+--------+------------+---------+-----------+
|  7369 | Taeshi | 1980-12-17 |  800.00 | Manager   |
|  7499 | ALLEN  | 1981-02-20 | 1600.00 | finance   |
|  7521 | WARD   | 1981-02-22 | 1250.00 | Markting  |
|  7566 | JONES  | 1981-04-02 | 2975.00 | Markting  |
|  7654 | MARTIN | 1981-09-28 | 1250.00 | finance   |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 | finance   |
|  7782 | CLARK  | 1981-06-09 | 2450.00 | Developer |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 | finance   |
|  7839 | KING   | 1981-11-17 | 5000.00 | finance   |
|  7844 | TURNER | 1981-09-08 | 1500.00 | Developer |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 | Developer |
|  7900 | JAMES  | 1981-12-03 |  950.00 | finance   |
|  7902 | FORD   | 1981-12-03 | 3000.00 | Markting  |
|  7934 | MILLER | 1982-01-23 | 1300.00 | finance   |
+-------+--------+------------+---------+-----------+
14 rows in set (0.00 sec)

mysql> update emp set ename="Kookie"
    -> where empid=7499;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update emp set ename="Mochi"
    -> where empid=7521;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0


mysql> select * from emp;
+-------+--------+------------+---------+-----------+
| empid | ename  | joindate   | sal     | dept      |
+-------+--------+------------+---------+-----------+
|  7369 | Taeshi | 1980-12-17 |  800.00 | Manager   |
|  7499 | Kookie | 1981-02-20 | 1600.00 | finance   |
|  7521 | Mochi  | 1981-02-22 | 1250.00 | Markting  |
|  7566 | Hope   | 1981-04-02 | 2975.00 | Markting  |
|  7654 | Yoongi | 1981-09-28 | 1250.00 | finance   |
|  7698 | BLAKE  | 1981-05-01 | 2850.00 | finance   |
|  7782 | CLARK  | 1981-06-09 | 2450.00 | Developer |
|  7788 | SCOTT  | 1982-12-09 | 3000.00 | finance   |
|  7839 | KING   | 1981-11-17 | 5000.00 | finance   |
|  7844 | TURNER | 1981-09-08 | 1500.00 | Developer |
|  7876 | ADAMS  | 1983-01-12 | 1100.00 | Developer |
|  7900 | JAMES  | 1981-12-03 |  950.00 | finance   |
|  7902 | FORD   | 1981-12-03 | 3000.00 | Markting  |
|  7934 | MILLER | 1982-01-23 | 1300.00 | finance   |
+-------+--------+------------+---------+-----------+
14 rows in set (0.00 sec)


mysql> select * from emp;
+-------+---------+------------+---------+-----------+
| empid | ename   | joindate   | sal     | dept      |
+-------+---------+------------+---------+-----------+
|  7369 | Taeshi  | 1980-12-17 |  800.00 | Manager   |
|  7499 | Kookie  | 1981-02-20 | 1600.00 | finance   |
|  7521 | Mochi   | 1981-02-22 | 1250.00 | Markting  |
|  7566 | Hope    | 1981-04-02 | 2975.00 | Markting  |
|  7654 | Yoongi  | 1981-09-28 | 1250.00 | finance   |
|  7698 | Moonie  | 1981-05-01 | 2850.00 | finance   |
|  7782 | Joonie  | 1981-06-09 | 2450.00 | Developer |
|  7788 | Steve   | 1982-12-09 | 3000.00 | finance   |
|  7839 | Wea     | 1981-11-17 | 5000.00 | finance   |
|  7844 | Lanzhan | 1981-09-08 | 1500.00 | Developer |
|  7876 | King    | 1983-01-12 | 1100.00 | Developer |
|  7900 | Bright  | 1981-12-03 |  950.00 | finance   |
|  7902 | Seojun  | 1981-12-03 | 3000.00 | Markting  |
|  7934 | Gwansik | 1982-01-23 | 1300.00 | finance   |
+-------+---------+------------+---------+-----------+
14 rows in set (0.00 sec)

mysql> update emp set sal=98000
    -> where empid=7369;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+-------+---------+------------+----------+-----------+
| empid | ename   | joindate   | sal      | dept      |
+-------+---------+------------+----------+-----------+
|  7369 | Taeshi  | 1980-12-17 | 98000.00 | Manager   |
|  7499 | Kookie  | 1981-02-20 |  1600.00 | finance   |
|  7521 | Mochi   | 1981-02-22 |  1250.00 | Markting  |
|  7566 | Hope    | 1981-04-02 |  2975.00 | Markting  |
|  7654 | Yoongi  | 1981-09-28 |  1250.00 | finance   |
|  7698 | Moonie  | 1981-05-01 |  2850.00 | finance   |
|  7782 | Joonie  | 1981-06-09 |  2450.00 | Developer |
|  7788 | Steve   | 1982-12-09 |  3000.00 | finance   |
|  7839 | Wea     | 1981-11-17 |  5000.00 | finance   |
|  7844 | Lanzhan | 1981-09-08 |  1500.00 | Developer |
|  7876 | King    | 1983-01-12 |  1100.00 | Developer |
|  7900 | Bright  | 1981-12-03 |   950.00 | finance   |
|  7902 | Seojun  | 1981-12-03 |  3000.00 | Markting  |
|  7934 | Gwansik | 1982-01-23 |  1300.00 | finance   |
+-------+---------+------------+----------+-----------+
14 rows in set (0.00 sec)


mysql> update emp set sal=80000
    -> where empid=7902;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+-------+---------+------------+----------+-----------+
| empid | ename   | joindate   | sal      | dept      |
+-------+---------+------------+----------+-----------+
|  7369 | Taeshi  | 1980-12-17 | 98000.00 | Manager   |
|  7499 | Kookie  | 1981-02-20 | 95000.00 | finance   |
|  7521 | Mochi   | 1981-02-22 | 93000.00 | Markting  |
|  7566 | Hope    | 1981-04-02 | 90000.00 | Markting  |
|  7654 | Yoongi  | 1981-09-28 | 88000.00 | finance   |
|  7698 | Moonie  | 1981-05-01 | 86000.00 | finance   |
|  7782 | Joonie  | 1981-06-09 | 86600.00 | Developer |
|  7788 | Steve   | 1982-12-09 | 87000.00 | finance   |
|  7839 | Wea     | 1981-11-17 | 85000.00 | finance   |
|  7844 | Lanzhan | 1981-09-08 | 85000.00 | Developer |
|  7876 | King    | 1983-01-12 | 81000.00 | Developer |
|  7900 | Bright  | 1981-12-03 | 81500.00 | finance   |
|  7902 | Seojun  | 1981-12-03 | 82000.00 | Markting  |
|  7934 | Gwansik | 1982-01-23 | 89000.00 | finance   |
+-------+---------+------------+----------+-----------+
14 rows in set (0.00 sec)