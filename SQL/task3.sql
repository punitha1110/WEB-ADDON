mysql> use wed;
Database changed
mysql> create table student(
    -> sname varchar(60);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> create table student(
    -> sname varchar(60)
    -> smark int
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'smark int
)' at line 3
mysql> create table student(
    -> sname varchar(60)
    -> smark int
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'smark int
)' at line 3
mysql> create table student(
    -> sname varchar(60),
    -> smark int
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> insert into student values('sree',85);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('varshini',80);
Query OK, 1 row affected (0.04 sec)

mysql> insert into student values('tharu',89);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values('semma',79);
Query OK, 1 row affected (0.04 sec)

mysql> insert into student values('neena',60);
Query OK, 1 row affected (0.05 sec)

mysql> select *from student;
+----------+-------+
| sname    | smark |
+----------+-------+
| sree     |    85 |
| varshini |    80 |
| tharu    |    89 |
| semma    |    79 |
| neena    |    60 |
+----------+-------+
5 rows in set (0.00 sec)

mysql> delete from student
    -> where sname='semma';
Query OK, 1 row affected (0.05 sec)

mysql> select *from student;
+----------+-------+
| sname    | smark |
+----------+-------+
| sree     |    85 |
| varshini |    80 |
| tharu    |    89 |
| neena    |    60 |
+----------+-------+
4 rows in set (0.00 sec)

mysql> insert into student values('sreena',70);
Query OK, 1 row affected (0.06 sec)

mysql> insert into student values('nithran',90);
Query OK, 1 row affected (0.04 sec)

mysql> select *from student;
+----------+-------+
| sname    | smark |
+----------+-------+
| sree     |    85 |
| varshini |    80 |
| tharu    |    89 |
| neena    |    60 |
| sreena   |    70 |
| nithran  |    90 |
+----------+-------+
6 rows in set (0.00 sec)

mysql> select *from emp
    -> where smark>=80;
ERROR 1146 (42S02): Table 'wed.emp' doesn't exist
mysql> select *from student
    -> where smark>=80;
+----------+-------+
| sname    | smark |
+----------+-------+
| sree     |    85 |
| varshini |    80 |
| tharu    |    89 |
| nithran  |    90 |
+----------+-------+
4 rows in set (0.00 sec)

mysql> create table course(
    -> course fees int
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'fees int
)' at line 2
mysql> create table course(
    -> coursefees int
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> insert into course values(1000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into course values(2000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into course values(8000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into course values(6000);
Query OK, 1 row affected (0.03 sec)

mysql> insert into course values(5000);
Query OK, 1 row affected (0.04 sec)

mysql> insert into course values(7000);
Query OK, 1 row affected (0.05 sec)

mysql> select *from course;
+------------+
| coursefees |
+------------+
|       1000 |
|       2000 |
|       8000 |
|       6000 |
|       5000 |
|       7000 |
+------------+
6 rows in set (0.00 sec)

mysql> select *from course order by coursefees asce;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'asce' at line 1
mysql> select *from course order by coursefees asc;
+------------+
| coursefees |
+------------+
|       1000 |
|       2000 |
|       5000 |
|       6000 |
|       7000 |
|       8000 |
+------------+
6 rows in set (0.00 sec)

mysql> create table book(
    -> bname varchar(30);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> create table book(
    -> bname varchar(30)
    -> bauthor varchar
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'bauthor varchar
)' at line 3
mysql> create table book(
    -> bname varchar(30),
    -> bauthor varchar
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 4
mysql> create table book(
    -> bname varchar(30),
    -> bauthor varchar(70)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> insert into book values('Pride','Prejudice');
Query OK, 1 row affected (0.03 sec)

mysql> insert into book values('Hamlet','William Shakespeare');
Query OK, 1 row affected (0.03 sec)

mysql> insert into book values('Paradise','^C;
mysql> insert into book values('paradise','John Milton');
Query OK, 1 row affected (0.04 sec)

mysql> insert into book values('Train to Pakistan','Khushwant Singh');
Query OK, 1 row affected (0.06 sec)

mysql> select *from book;
+-------------------+---------------------+
| bname             | bauthor             |
+-------------------+---------------------+
| Pride             | Prejudice           |
| Hamlet            | William Shakespeare |
| paradise          | John Milton         |
| Train to Pakistan | Khushwant Singh     |
+-------------------+---------------------+
4 rows in set (0.00 sec)

mysql> select bname
    -> from book
    -> where bname like 'p%';
+----------+
| bname    |
+----------+
| Pride    |
| paradise |
+----------+
2 rows in set (0.03 sec)

mysql> select bname
    -> from book
    -> where bname like '%n';
+-------------------+
| bname             |
+-------------------+
| Train to Pakistan |
+-------------------+
1 row in set (0.00 sec)

mysql> select bauthor
    -> from book
    -> where bauthor like 'j%';
+-------------+
| bauthor     |
+-------------+
| John Milton |
+-------------+
1 row in set (0.00 sec)
