Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 20
Server version: 8.0.39 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> select concat('hey','gunnu!');
+------------------------+
| concat('hey','gunnu!') |
+------------------------+
| heygunnu!              |
+------------------------+
1 row in set (0.00 sec)

mysql> select concat('hey',' ','gunnu!');
+----------------------------+
| concat('hey',' ','gunnu!') |
+----------------------------+
| hey gunnu!                 |
+----------------------------+
1 row in set (0.00 sec)

mysql> select * from emp1;
ERROR 1046 (3D000): No database selected
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bank_db            |
| bookstore_db       |
| campdb             |
| company_db         |
| cool               |
| end                |
| hot                |
| information_schema |
| mini_task1         |
| mysql              |
| nfg                |
| performance_schema |
| retailstoredb      |
+--------------------+
13 rows in set (0.04 sec)

mysql> use bank_db;
Database changed
mysql> select * from emp1;
+--------+--------+------------+---------+
| emp_id | name   | desig      | dept    |
+--------+--------+------------+---------+
|   1011 | raju   | manager    | loan    |
|   1021 | sham   | cashier    | cash    |
|   1031 | poul   | associate  | loan    |
|   1041 | alex   | accountant | ass     |
|   1052 | victor | associate  | depoist |
+--------+--------+------------+---------+
5 rows in set (0.01 sec)

mysql> add last_name varchar(20);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add last_name varchar(20)' at line 1
mysql> alter table emp1
    -> add last_name varchar(20);
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select*from emp1;
+--------+--------+------------+---------+-----------+
| emp_id | name   | desig      | dept    | last_name |
+--------+--------+------------+---------+-----------+
|   1011 | raju   | manager    | loan    | NULL      |
|   1021 | sham   | cashier    | cash    | NULL      |
|   1031 | poul   | associate  | loan    | NULL      |
|   1041 | alex   | accountant | ass     | NULL      |
|   1052 | victor | associate  | depoist | NULL      |
+--------+--------+------------+---------+-----------+
5 rows in set (0.00 sec)

mysql> insert into emp1 values
    -> ('sharma');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> alter table emp1
    -> drop column last_name;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from emp1;
+--------+--------+------------+---------+
| emp_id | name   | desig      | dept    |
+--------+--------+------------+---------+
|   1011 | raju   | manager    | loan    |
|   1021 | sham   | cashier    | cash    |
|   1031 | poul   | associate  | loan    |
|   1041 | alex   | accountant | ass     |
|   1052 | victor | associate  | depoist |
+--------+--------+------------+---------+
5 rows in set (0.00 sec)

mysql> ;
ERROR:
No query specified

mysql> create database run;
Query OK, 1 row affected (0.01 sec)

mysql> use run;
Database changed
mysql> create table stu(
    -> student_id int,
    -> frist_name varchar(20),
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 3
mysql> create table stu(
    -> student_id int,
    -> first_name varchar(20),
    -> last_name varchar(20),
    -> branch varchar(10));
Query OK, 0 rows affected (0.03 sec)

mysql> insert into stu values
    -> (1011,'vansh','sharma','btech'),
    -> (2022,'riddhi','gupta','bba'),
    -> (3453,'sonali','jhoshi','becom'),
    -> (5462,'rohit','nagpal','bca');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from stu;
+------------+------------+-----------+--------+
| student_id | first_name | last_name | branch |
+------------+------------+-----------+--------+
|       1011 | vansh      | sharma    | btech  |
|       2022 | riddhi     | gupta     | bba    |
|       3453 | sonali     | jhoshi    | becom  |
|       5462 | rohit      | nagpal    | bca    |
+------------+------------+-----------+--------+
4 rows in set (0.00 sec)

mysql> select student_id, concat(first_name , last_name) as full_name
    -> from stu;
+------------+--------------+
| student_id | full_name    |
+------------+--------------+
|       1011 | vanshsharma  |
|       2022 | riddhigupta  |
|       3453 | sonalijhoshi |
|       5462 | rohitnagpal  |
+------------+--------------+
4 rows in set (0.00 sec)

mysql> select student_id, concat(first_name ,' ', last_name) as full_name
    -> from stu;
+------------+---------------+
| student_id | full_name     |
+------------+---------------+
|       1011 | vansh sharma  |
|       2022 | riddhi gupta  |
|       3453 | sonali jhoshi |
|       5462 | rohit nagpal  |
+------------+---------------+
4 rows in set (0.00 sec)

mysql>
