1. join students and marks table.


mysql> create database class;
Query OK, 1 row affected (0.01 sec)

mysql> use class;
Database changed
mysql> create table student(
    -> sroll int,
    -> sname varchar(50),
    -> smark int
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into student values(01,'john',99);
Query OK, 1 row affected (0.01 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| kgcas              |
| performance_schema |
| school             |
| student            |
| sys                |
+--------------------+
6 rows in set (0.00 sec)

mysql> create database class;
Query OK, 1 row affected (0.01 sec)

mysql> create table student(
    -> sroll int,
    -> sname varchar(50)
    -> );
ERROR 1046 (3D000): No database selected
mysql> use class;
Database changed

mysql> create table student(
    -> sroll int,
    -> sname varchar(50)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into student values(01,'leela');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(02,'rana');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(03,'sara');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(04,'adam');
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(05,'john');
Query OK, 1 row affected (0.01 sec)

mysql> select*from student;
+-------+-----------+
| sroll | sname     |
+-------+-----------+
|     1 | leela     |
|     2 | rana      |
|     3 | sara      |
|     4 | adam      |
|     5 | john      |
+-------+-----------+
5 rows in set (0.00 sec)

mysql> create table mark(
    -> studentmark int
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into mark values (99)
    -> ;
Query OK, 1 row affected (0.01 sec)

mysql> insert into mark values (88);
Query OK, 1 row affected (0.01 sec)

mysql> insert into mark values (98);
Query OK, 1 row affected (0.01 sec)

mysql> insert into mark values (78);
Query OK, 1 row affected (0.01 sec)

mysql> insert into mark values (93);
Query OK, 1 row affected (0.01 sec)

mysql> select*from mark;
+-------------+
| studentmark |
+-------------+
|          99 |
|          88 |
|          98 |
|          78 |
|          93 |
+-------------+

5 rows in set (0.00 sec)

mysql> select*
    -> from student cross join mark;
+-------+-----------+-------------+
| sroll | sname     | studentmark |
+-------+-----------+-------------+
|     5 | john      |  93         |
|     4 | adam      |  78	  |
|     3 | sara      |  98         |
|     2 | rana      |  88         | 
|     2 | adam      |  99	  |
|     3 | sara      |  78	  |
|     4 | rana      |  98	  |
|     5 | leela     |  93	  |
|     1 | leela     |  99	  |
|     5 | john      |  98	  |
|     4 | adam      |  78	  |
|     3 | sara      |  93	  |
|     2 | rana      |  98	  |
|     1 | leela     |  99	  |
+-------+-----------+-------------+


2. join table of customers and orders.



mysql> select*
    -> from mark
    -> where studentmark=(select max(studentmark)
    -> from mark);
+-------------+
| studentmark |
+-------------+
|          99 |
+-------------+
1 row in set (0.01 sec)

mysql> create table orders(
    -> orderid int,
    -> customername varchar(50),
    -> amount int
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into orders values(01,'john',300);
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values(02,'david',400);
Query OK, 1 row affected (0.01 sec)

mysql> insert into orders values(03,'devi',500);
Query OK, 1 row affected (0.01 sec)

mysql> select* from orders;
+---------+--------------+--------+
| orderid | customername | amount |
+---------+--------------+--------+
|     01  | john         |    300 |
|     02  | david        |    400 |
|     03  | devi         |    500 |
+---------+--------------+--------+
3 rows in set (0.00 sec)

mysql> create table customers(
    -> sno int,
    -> customerplace varchar(50)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into customers values(01,'Japan');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customers values(02,'China');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customers values(03,'India');
Query OK, 1 row affected (0.01 sec)

mysql> select*from customers;
+------+---------------+
| sno  | customerplace |
+------+---------------+
|    01 | Japan        |
|    02 | China        |
|    03 | India        |
+------+---------------+
3 rows in set (0.00 sec)

mysql> select *
    -> from orders,customers;
+---------+--------------+--------+------+---------------+
| orderid | customername | amount | sno  | customerplace |
+---------+--------------+--------+------+---------------+
|      03 | devi         |    500 |    1 | Japan         |
|      02 | david        |    400 |    1 | Japan         |
|      01 | john         |    300 |    1 | Japan         |
|      03 | devi         |    500 |    2 | China         |
|      02 | david        |    400 |    2 | China         |
|      01 | john         |    300 |    2 | China         |
|      03 | devi         |    500 |    3 | India         |
|      02 | david        |    400 |    3 | India         |
|      01 | john         |    300 |    3 | India         |
+---------+--------------+--------+------+---------------+
9 rows in set (0.00 sec)

mysql> select *
    -> from orders cross join customers;


+---------+--------------+--------+------+---------------+
| orderid | customername | amount | sno  | customerplace |
+---------+--------------+--------+------+---------------+
|      03 | devi         |    500 |    1 | Japan         |
|      02 | david        |    400 |    1 | Japan         |
|      01 | john         |    300 |    1 | Japan         |
|      03 | devi         |    500 |    2 | China         |
|      02 | david        |    400 |    2 | China         |
|      01 | john         |    300 |    2 | China         |
|      03 | devi         |    500 |    3 | India         |
|      02 | david        |    400 |    3 | India         |
|      01 | john         |    300 |    3 | India         |
+---------+--------------+--------+------+---------------+

9 rows in set (0.00 sec)
