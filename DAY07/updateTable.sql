
mysql> create table Course(
    -> Coursefee int
    -> );

mysql> insert into course values(10000);
mysql> insert into course values(20000);
mysql> insert into course values(30000);
mysql> insert into course values(40000);
mysql> insert into course values(50000);
mysql> select*
    -> from course;
+-----------+
| Coursefee |
+-----------+
|     10000 |
|     20000 |
|     30000 |
|     40000 |
|     50000 |
+-----------+
    
mysql> update course
    -> set coursefee=60000
    -> where coursefee=50000;
mysql> select*from course
    -> ;
+-----------+
| Coursefee |
+-----------+
|     10000 |
|     20000 |
|     30000 |
|     40000 |
|     60000 |
+-----------+

