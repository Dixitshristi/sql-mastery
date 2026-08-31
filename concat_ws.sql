mysql> use run;
Database changed
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

mysql> select concat_ws(':',student_id , first_name , last_name , branch) from stu;
+-------------------------------------------------------------+
| concat_ws(':',student_id , first_name , last_name , branch) |
+-------------------------------------------------------------+
| 1011:vansh:sharma:btech                                     |
| 2022:riddhi:gupta:bba                                       |
| 3453:sonali:jhoshi:becom                                    |
| 5462:rohit:nagpal:bca                                       |
+-------------------------------------------------------------+
4 rows in set (0.00 sec)

mysql> ^X^X^X
