-- 1. Create Table Name : Student and Exam

mysql> create database exam;
Query OK, 1 row affected (0.02 sec)

mysql> use exam;
Database changed
mysql> CREATE TABLE student (
    ->         Rollno INT(11) NOT NULL AUTO_INCREMENT,
    ->         Name VARCHAR(50) NOT NULL,
    ->         Branch VARCHAR(20) NOT NULL,
    ->         PRIMARY KEY (Rollno)
    ->     );
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> select * from student;
Empty set (0.00 sec)

mysql> INSERT INTO student (Rollno, Name, Branch) VALUES
    ->     (1, 'Jay', 'Computer Science'),
    ->     (2, 'Suhani', 'Electronic and Com'),
    ->     (3, 'Kriti', 'Electronic and Com');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM student;
+--------+--------+--------------------+
| Rollno | Name   | Branch             |
+--------+--------+--------------------+
|      1 | Jay    | Computer Science   |
|      2 | Suhani | Electronic and Com |
|      3 | Kriti  | Electronic and Com |
+--------+--------+--------------------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE Exam (
    ->         Rollno INT(11),
    ->         S_code VARCHAR(50) NOT NULL,
    ->         Marks INT(5),
    ->         P_code VARCHAR(50) NOT NULL,
    ->         FOREIGN KEY (Rollno) REFERENCES Student(Rollno)
    ->     );
Query OK, 0 rows affected, 2 warnings (0.06 sec)

mysql> select * from Exam;
Empty set (0.00 sec)

mysql> INSERT INTO Exam (Rollno, S_code, Marks, P_code) VALUES
    ->     (1, 'CS11', 50, 'CS'),
    ->     (1, 'CS12', 60, 'CS'),
    ->     (2, 'EC101', 66, 'EC'),
    ->     (2, 'EC102', 70, 'EC'),
    ->     (3, 'EC101', 45, 'EC'),
    ->     (3, 'EC102', 50, 'EC');
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from Exam;
+--------+--------+-------+--------+
| Rollno | S_code | Marks | P_code |
+--------+--------+-------+--------+
|      1 | CS11   |    50 | CS     |
|      1 | CS12   |    60 | CS     |
|      2 | EC101  |    66 | EC     |
|      2 | EC102  |    70 | EC     |
|      3 | EC101  |    45 | EC     |
|      3 | EC102  |    50 | EC     |
+--------+--------+-------+--------+
6 rows in set (0.00 sec)

mysql>