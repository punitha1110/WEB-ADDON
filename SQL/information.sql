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

mysql> insert into future values('punitha', 01 ,'punitha@gmail.com',30121995,'Bsc');
Query OK, 1 row affected (0.04 sec)

mysql> select *
    -> from future
    -> ;
+--------+-------+------------------+----------+--------+
| fname  | froll | femail           | fnum     | fdep   |
+--------+-------+------------------+----------+--------+
| punitha |   01 | punitha@gmail.com | 30121995 | Bsc |
+--------+-------+------------------+----------+--------+
1 row in set (0.03 sec)

mysql> insert into future values('adam', 02 ,'adam@gmail.com',01091997,'Bca');
Query OK, 1 row affected (0.05 sec)

mysql> insert into future values('david', 03 ,'david@gmail.com',13101995,'Ba');
Query OK, 1 row affected (0.04 sec)

mysql> select *
    -> from future;
+--------+-------+------------------+----------+--------+
| fname  | froll | femail           | fnum     | fdep   |
+--------+-------+------------------+----------+--------+
| punitha |    01 | punitha@gmail.com | 30121995 | Bsc |
| adam    |    02 | adam@gmail.com    |  1091997 | Bca |
| david   |    03 | david@gmail.com   | 13101995 | Ba  |
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
| punitha |    01 | punitha@gmail.com | 30121995 | Bsc | NULL   |
| adam    |    02 | adam@gmail.com    |  1091997 | Bca | NULL   |
| david   |    03 | david@gmail.com   | 13101995 | Ba  | NULL   |
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
| punitha |    01 | punitha@gmail.com | 30121995 | Bsc | Singer  |
| adam    |    02 | adam@gmail.com    |  1091997 | Bca | Singer  |
| david   |    03 | david@gmail.com   | 13101995 | Ba  | Singer  |
+--------+-------+------------------+----------+--------+--------+
3 rows in set (0.00 sec)

mysql> update future set coure="Singer"
    -> where froll=01;
ERROR 1054 (42S22): Unknown column 'coure' in 'field list'
mysql> update future set coure="Dancer"
    -> where froll=02;
ERROR 1054 (42S22): Unknown column 'coure' in 'field list'
mysql> update future set course="Dancer"
    -> where froll=03;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from future;
+--------+-------+------------------+----------+--------+--------+
| fname  | froll | femail           | fnum     | fdep   | course |
+--------+-------+------------------+----------+--------+--------+
| punitha |    01 | punitha@gmail.com | 30121995 | Bsc | Singer  |
| adam    |    02 | adam@gmail.com    |  1091997 | Bca | Singer  |
| david   |    03 | david@gmail.com   | 13101995 | Ba  | Dancer  |
+--------+-------+------------------+----------+--------+--------+
3 rows in set (0.00 sec)

mysql> update future set course="Multi"
    -> where froll=02;
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from future;
+--------+-------+------------------+----------+--------+--------+
| fname  | froll | femail           | fnum     | fdep   | course |
+--------+-------+------------------+----------+--------+--------+
| punitha |    01 | punitha@gmail.com | 30121995 | Bsc | Singer  |
| adam    |    02 | adam@gmail.com    |  1091997 | Bca | Multi  |
| david   |    03 | david@gmail.com   | 13101995 | Ba  | Dancer  |
+--------+-------+------------------+----------+--------+--------+
3 rows in set (0.00 sec)
