show databases;
+--------------------+
| Database           |
+--------------------+
| friends            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.05 sec)

mysql> use friends;
Database changed
mysql> create table future(
    -> fname varchar(50),
    -> froll int,
    -> femail varchar(50),
    -> fnum int,
    -> fdep varchar(20)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> insert into future values('Taeshi', 95,'taeshi@gmail.com',30121995,'Bighit');
Query OK, 1 row affected (0.04 sec)

mysql> select *
    -> from future
    -> ;
+--------+-------+------------------+----------+--------+
| fname  | froll | femail           | fnum     | fdep   |
+--------+-------+------------------+----------+--------+
| Taeshi |    95 | taeshi@gmail.com | 30121995 | Bighit |
+--------+-------+------------------+----------+--------+
1 row in set (0.03 sec)

mysql> insert into future values('Kookie',97,'kook@gmail.com',01091997,'Bighit');
Query OK, 1 row affected (0.05 sec)

mysql> insert into future values('Mochi',96,'mochi@gmail.com',13101995,'Bighit');
Query OK, 1 row affected (0.04 sec)

mysql> select *
    -> from future;
+--------+-------+------------------+----------+--------+
| fname  | froll | femail           | fnum     | fdep   |
+--------+-------+------------------+----------+--------+
| Taeshi |    95 | taeshi@gmail.com | 30121995 | Bighit |
| Kookie |    97 | kook@gmail.com   |  1091997 | Bighit |
| Mochi  |    96 | mochi@gmail.com  | 13101995 | Bighit |
+--------+-------+------------------+----------+--------+
3 rows in set (0.00 sec)

mysql> show create table future;
+--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Table  | Create Table                                                                                                                                                                                                                                                 |
+--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| future | CREATE TABLE `future` (
  `fname` varchar(50) DEFAULT NULL,
  `froll` int DEFAULT NULL,
  `femail` varchar(50) DEFAULT NULL,
  `fnum` int DEFAULT NULL,
  `fdep` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci |
+--------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.04 sec)

mysql> update future set coure="Singer";
ERROR 1054 (42S22): Unknown column 'coure' in 'field list'
mysql> alter table future
    -> add course varchar(50);
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from future;
+--------+-------+------------------+----------+--------+--------+
| fname  | froll | femail           | fnum     | fdep   | course |
+--------+-------+------------------+----------+--------+--------+
| Taeshi |    95 | taeshi@gmail.com | 30121995 | Bighit | NULL   |
| Kookie |    97 | kook@gmail.com   |  1091997 | Bighit | NULL   |
| Mochi  |    96 | mochi@gmail.com  | 13101995 | Bighit | NULL   |
+--------+-------+------------------+----------+--------+--------+
3 rows in set (0.00 sec)

mysql> update future set coure="Singer";
ERROR 1054 (42S22): Unknown column 'coure' in 'field list'
mysql> update future set course="Singer";
Query OK, 3 rows affected (0.03 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from future;
+--------+-------+------------------+----------+--------+--------+
| fname  | froll | femail           | fnum     | fdep   | course |
+--------+-------+------------------+----------+--------+--------+
| Taeshi |    95 | taeshi@gmail.com | 30121995 | Bighit | Singer |
| Kookie |    97 | kook@gmail.com   |  1091997 | Bighit | Singer |
| Mochi  |    96 | mochi@gmail.com  | 13101995 | Bighit | Singer |
+--------+-------+------------------+----------+--------+--------+
3 rows in set (0.00 sec)

mysql> update future set coure="Singer"
    -> where froll=97;
ERROR 1054 (42S22): Unknown column 'coure' in 'field list'
mysql> update future set coure="Dancer"
    -> where froll=96;
ERROR 1054 (42S22): Unknown column 'coure' in 'field list'
mysql> update future set course="Dancer"
    -> where froll=96;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from future;
+--------+-------+------------------+----------+--------+--------+
| fname  | froll | femail           | fnum     | fdep   | course |
+--------+-------+------------------+----------+--------+--------+
| Taeshi |    95 | taeshi@gmail.com | 30121995 | Bighit | Singer |
| Kookie |    97 | kook@gmail.com   |  1091997 | Bighit | Singer |
| Mochi  |    96 | mochi@gmail.com  | 13101995 | Bighit | Dancer |
+--------+-------+------------------+----------+--------+--------+
3 rows in set (0.00 sec)

mysql> update future set course="Multi"
    -> where froll=97;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from future;
+--------+-------+------------------+----------+--------+--------+
| fname  | froll | femail           | fnum     | fdep   | course |
+--------+-------+------------------+----------+--------+--------+
| Taeshi |    95 | taeshi@gmail.com | 30121995 | Bighit | Singer |
| Kookie |    97 | kook@gmail.com   |  1091997 | Bighit | Multi  |
| Mochi  |    96 | mochi@gmail.com  | 13101995 | Bighit | Dancer |
+--------+-------+------------------+----------+--------+--------+
3 rows in set (0.00 sec)
