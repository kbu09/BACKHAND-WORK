-- . Create table given below: Salesperson and Customer

mysql> create database saleperson;
Query OK, 1 row affected (0.01 sec)

mysql>  use saleperson
Database changed
mysql> CREATE TABLE Salesperson (
    ->   SNo INT PRIMARY KEY AUTO_INCREMENT,
    -> SName VARCHAR(30) NOT NULL,
    ->  City VARCHAR(30) NOT NULL,
    -> Comm DECIMAL(5,2));
Query OK, 0 rows affected (0.04 sec)

mysql> describe Salesperson;
+-------+--------------+------+-----+---------+----------------+
| Field | Type         | Null | Key | Default | Extra          |
+-------+--------------+------+-----+---------+----------------+
| SNo   | int          | NO   | PRI | NULL    | auto_increment |
| SName | varchar(30)  | NO   |     | NULL    |                |
| City  | varchar(30)  | NO   |     | NULL    |                |
| Comm  | decimal(5,2) | YES  |     | NULL    |                |
+-------+--------------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO Salesperson (SNo, SName, City, Comm) VALUES
    ->     (1001, 'Peel', 'London', 0.12),
    ->     (1002, 'Serres', 'San Jose', 0.13),
    ->     (1003, 'Axelrod', 'New York', 0.10),
    ->     (1004, 'Motika', 'London', 0.11),
    ->     (1007, 'Rafkin', 'Barcelona', 0.15);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Salesperson;
+------+---------+-----------+------+
| SNo  | SName   | City      | Comm |
+------+---------+-----------+------+
| 1001 | Peel    | London    | 0.12 |
| 1002 | Serres  | San Jose  | 0.13 |
| 1003 | Axelrod | New York  | 0.10 |
| 1004 | Motika  | London    | 0.11 |
| 1007 | Rafkin  | Barcelona | 0.15 |
+------+---------+-----------+------+
5 rows in set (0.00 sec)

mysql> ^A^C
mysql> create table Customer (
    ->     CNM int primary key auto_increment,
    ->    CName varchar(30) not null,
    ->    City varchar(30) not null,
    ->     Rating int,
    ->    Sno int, foreign key (Sno) references Salesperson (Sno) );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO Customer (CName, City, Rating, Sno) VALUES
    ->     ('Hoffman', 'London', 100, 1001),
    ->     ('Giovanne', 'Roe', 200, 1003),
    ->     ('Liu', 'San Jose', 300, 1002),
    ->     ('Grass', 'Barcelona', 100, 1002),
    ->     ('Clemens', 'London', 300, 1007),
    ->     ('Pereira', 'Roe', 100, 1004);
Query OK, 6 rows affected (0.02 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-----+----------+-----------+--------+------+
| CNM | CName    | City      | Rating | Sno  |
+-----+----------+-----------+--------+------+
|   1 | Hoffman  | London    |    100 | 1001 |
|   2 | Giovanne | Roe       |    200 | 1003 |
|   3 | Liu      | San Jose  |    300 | 1002 |
|   4 | Grass    | Barcelona |    100 | 1002 |
|   5 | Clemens  | London    |    300 | 1007 |
|   6 | Pereira  | Roe       |    100 | 1004 |
+-----+----------+-----------+--------+------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM Orders WHERE TotalAmount > 1000;
ERROR 1146 (42S02): Table 'saleperson.orders' doesn't exist
mysql> select ord_no,purch_amt from orders where purch_amt > 1000;
ERROR 1146 (42S02): Table 'saleperson.orders' doesn't exist
mysql> CREATE TABLE Orders (
    ->     OrderID INT PRIMARY KEY AUTO_INCREMENT,
    ->     OrderDate DATE NOT NULL,
    ->     TotalAmount DECIMAL(10, 2) NOT NULL,
    ->     CNM INT,
    ->     SNo INT,
    ->     FOREIGN KEY (CNM) REFERENCES Customer (CNM),
    ->     FOREIGN KEY (SNo) REFERENCES Salesperson (SNo)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO Orders (OrderDate, TotalAmount, CNM, SNo) VALUES
    ->     ('2024-01-15', 1500.00, 1, 1001),
    ->     ('2024-02-10', 500.00, 2, 1003),
    ->     ('2024-03-05', 1200.50, 3, 1002),
    ->     ('2024-04-20', 900.00, 4, 1002),
    ->     ('2024-05-12', 2000.00, 5, 1007);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Orders WHERE TotalAmount > 1000;
+---------+------------+-------------+------+------+
| OrderID | OrderDate  | TotalAmount | CNM  | SNo  |
+---------+------------+-------------+------+------+
|       1 | 2024-01-15 |     1500.00 |    1 | 1001 |
|       3 | 2024-03-05 |     1200.50 |    3 | 1002 |
|       5 | 2024-05-12 |     2000.00 |    5 | 1007 |
+---------+------------+-------------+------+------+
3 rows in set (0.00 sec)

mysql> SELECT SName, City FROM Salesperson WHERE City = 'London' AND Comm > 0.12;
Empty set (0.00 sec)

mysql> SELECT SName, City FROM Salesperson WHERE City = 'London' AND Comm >= 0.12;
+-------+--------+
| SName | City   |
+-------+--------+
| Peel  | London |
+-------+--------+
1 row in set (0.00 sec)

mysql> select * from salesperson where city = "Barcelona" OR city = "London";
+------+--------+-----------+------+
| SNo  | SName  | City      | Comm |
+------+--------+-----------+------+
| 1001 | Peel   | London    | 0.12 |
| 1004 | Motika | London    | 0.11 |
| 1007 | Rafkin | Barcelona | 0.15 |
+------+--------+-----------+------+
3 rows in set (0.00 sec)

mysql> select * from salesperson where Comm > 0.10 AND Comm < 0.12;
+------+--------+--------+------+
| SNo  | SName  | City   | Comm |
+------+--------+--------+------+
| 1004 | Motika | London | 0.11 |
+------+--------+--------+------+
1 row in set (0.00 sec)

mysql> select * from customer where city = "Rome" OR Rating > 100;
+-----+----------+----------+--------+------+
| CNM | CName    | City     | Rating | Sno  |
+-----+----------+----------+--------+------+
|   2 | Giovanne | Roe      |    200 | 1003 |
|   3 | Liu      | San Jose |    300 | 1002 |
|   5 | Clemens  | London   |    300 | 1007 |
+-----+----------+----------+--------+------+
3 rows in set (0.00 sec)

mysql> select * from salesperson;
+------+---------+-----------+------+
| SNo  | SName   | City      | Comm |
+------+---------+-----------+------+
| 1001 | Peel    | London    | 0.12 |
| 1002 | Serres  | San Jose  | 0.13 |
| 1003 | Axelrod | New York  | 0.10 |
| 1004 | Motika  | London    | 0.11 |
| 1007 | Rafkin  | Barcelona | 0.15 |
+------+---------+-----------+------+
5 rows in set (0.00 sec)
