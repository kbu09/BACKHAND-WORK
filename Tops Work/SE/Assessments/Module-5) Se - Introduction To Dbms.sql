
mysql> create database banks;
Query OK, 1 row affected (0.02 sec)


mysql> use banks;
Database changed
mysql> CREATE TABLE Bank (
    ->     branch_id INT PRIMARY KEY,
    ->     branch_name VARCHAR(50),
    ->     branch_city VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> describe bank;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| branch_id   | int         | NO   | PRI | NULL    |       |
| branch_name | varchar(50) | YES  |     | NULL    |       |
| branch_city | varchar(50) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> CREATE TABLE AccountHolder (
    ->     account_holder_id INT PRIMARY KEY,
    ->     account_no VARCHAR(20),
    ->     account_holder_name VARCHAR(50),
    ->     city VARCHAR(50),
    ->     contact VARCHAR(15),
    ->     date_of_account_created DATE,
    ->     account_status VARCHAR(10),
    ->     account_type VARCHAR(20),
    ->     balance DECIMAL(10, 2)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> describe AccountHolder;
+-------------------------+---------------+------+-----+---------+-------+
| Field                   | Type          | Null | Key | Default | Extra |
+-------------------------+---------------+------+-----+---------+-------+
| account_holder_id       | int           | NO   | PRI | NULL    |       |
| account_no              | varchar(20)   | YES  |     | NULL    |       |
| account_holder_name     | varchar(50)   | YES  |     | NULL    |       |
| city                    | varchar(50)   | YES  |     | NULL    |       |
| contact                 | varchar(15)   | YES  |     | NULL    |       |
| date_of_account_created | date          | YES  |     | NULL    |       |
| account_status          | varchar(10)   | YES  |     | NULL    |       |
| account_type            | varchar(20)   | YES  |     | NULL    |       |
| balance                 | decimal(10,2) | YES  |     | NULL    |       |
+-------------------------+---------------+------+-----+---------+-------+
9 rows in set (0.01 sec)

mysql> CREATE TABLE Loan (
    ->     loan_no INT PRIMARY KEY,
    ->     branch_id INT,
    ->     account_holder_id INT,
    ->     loan_amount DECIMAL(10, 2),
    ->     loan_type VARCHAR(20),
    ->     FOREIGN KEY (branch_id) REFERENCES Bank(branch_id),
    ->     FOREIGN KEY (account_holder_id) REFERENCES AccountHolder(account_holder_id)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> describe Loan;
+-------------------+---------------+------+-----+---------+-------+
| Field             | Type          | Null | Key | Default | Extra |
+-------------------+---------------+------+-----+---------+-------+
| loan_no           | int           | NO   | PRI | NULL    |       |
| branch_id         | int           | YES  | MUL | NULL    |       |
| account_holder_id | int           | YES  | MUL | NULL    |       |
| loan_amount       | decimal(10,2) | YES  |     | NULL    |       |
| loan_type         | varchar(20)   | YES  |     | NULL    |       |
+-------------------+---------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> INSERT INTO Bank (branch_id, branch_name, branch_city) VALUES
    -> (1, 'Main Branch', 'Nikol'),
    -> (2, 'HDFC Branch', 'Nikol'),
    -> (3, 'KOTAK Branch', 'Odhav');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO AccountHolder (account_holder_id, account_no, account_holder_name, city, contact, date_of_account_created, account_status, account_type, balance) VALUES
    -> (1, 'ACC1001', 'Alice Smith', 'Nikol', '0000001245', '2024-08-01', 'active', 'savings', 500.00),
    -> (2, 'ACC1002', 'Bob Johnson', 'Nikol', '1234567890', '2024-08-15', 'active', 'checking', 300.00),
    -> (3, 'ACC1003', 'Charlie Brown', 'Odhav', '1234567859', '2024-07-20', 'terminated', 'savings', 1500.00),
    -> (4, 'ACC1004', 'Diana Prince', 'Nikol', '2369852147', '2024-09-05', 'active', 'savings', 600.00);
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO Loan (loan_no, branch_id, account_holder_id, loan_amount, loan_type) VALUES
    -> (1, 1, 1, 10000.00, 'Personal'),
    -> (2, 2, 2, 20000.00, 'Home'),
    -> (3, 1, 4, 5000.00, 'Car');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from Bank;
+-----------+-----------------+-------------+
| branch_id | branch_name     | branch_city |
+-----------+-----------------+-------------+
|         1 | Main Branch     | Nikol       |
|         2 | HDFC Branch     | Nikol       |
|         3 | KOTAK Branch    | Odhav       |
+-----------+-----------------+-------------+
3 rows in set (0.00 sec)

mysql> select * from AccountHolder;
+-------------------+------------+---------------------+-------------+------------+-------------------------+----------------+--------------+---------+
| account_holder_id | account_no | account_holder_name | city        | contact    | date_of_account_created | account_status | account_type | balance |
+-------------------+------------+---------------------+-------------+--------------+-----------------------+----------------+--------------+---------+
|                 1 | ACC1001    | Alice Smith         | Nikol       | 0000001245 | 2024-08-01              | active         | savings      |  500.00 |
|                 2 | ACC1002    | Bob Johnson         | Nikol       | 1234567890 | 2024-08-15              | active         | checking     |  300.00 |
|                 3 | ACC1003    | Charlie Brown       | Odhav       | 1234567859 | 2024-07-20              | terminated     | savings      | 1500.00 |
|                 4 | ACC1004    | Diana Prince        | Nikol       | 2369852147 | 2024-09-05              | active         | savings      |  600.00 |
+-------------------+------------+---------------------+-------------+------------+-------------------------+----------------+--------------+---------+
4 rows in set (0.00 sec)

mysql> select * from loan;
+---------+-----------+-------------------+-------------+-----------+
| loan_no | branch_id | account_holder_id | loan_amount | loan_type |
+---------+-----------+-------------------+-------------+-----------+
|       1 |         1 |                 1 |    10000.00 | Personal  |
|       2 |         2 |                 2 |    20000.00 | Home      |
|       3 |         1 |                 4 |     5000.00 | Car       |
+---------+-----------+-------------------+-------------+-----------+
3 rows in set (0.00 sec)


mysql> BEGIN;
Query OK, 0 rows affected (0.00 sec)


mysql> UPDATE AccountHolder
    -> SET balance = balance - 100.00
    -> WHERE account_holder_id = 1 AND balance >= 100.00;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE AccountHolder
    -> SET balance = balance + 100.00
    -> WHERE account_holder_id = 2;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0



mysql> COMMIT;
Query OK, 0 rows affected (0.02 sec)


mysql> SELECT * FROM AccountHolder WHERE city = 'Nikol';
+-------------------+------------+---------------------+----------+--------------+-------------------------+----------------+--------------+---------+
| account_holder_id | account_no | account_holder_name | city     | contact      | date_of_account_created | account_status | account_type | balance |
+-------------------+------------+---------------------+----------+--------------+-------------------------+----------------+--------------+---------+
|                 1 | ACC1001    | Alice Smith         | Nikol    | 0000001245   | 2024-08-01              | active         | savings      |  400.00 |
|                 2 | ACC1002    | Bob Johnson         | Nikol    | 1234567890   | 2024-08-15              | active         | checking     |  400.00 |
|                 4 | ACC1004    | Diana Prince        | Nikol    | 2369852147   | 2024-09-05              | active         | savings      |  600.00 |
+-------------------+------------+---------------------+----------+--------------+-------------------------+----------------+--------------+---------+
3 rows in set (0.00 sec)

mysql> SELECT account_no, account_holder_name FROM AccountHolder WHERE DAY(date_of_account_created) > 15;
+------------+---------------------+
| account_no | account_holder_name |
+------------+---------------------+
| ACC1003    | Charlie Brown       |
+------------+---------------------+
1 row in set (0.00 sec)

mysql> SELECT branch_city, COUNT(branch_id) AS Count_Branch FROM Bank GROUP BY branch_city;
+-------------+--------------+
| branch_city | Count_Branch |
+-------------+--------------+
| Nikol       |            3 |
| Odhav       |            1 |
+-------------+--------------+
2 rows in set (0.00 sec)


mysql> SELECT ah.account_holder_id, ah.account_holder_name, l.branch_id, l.loan_amount FROM AccountHolder ah JOIN Loan l ON ah.account_holder_id = l.account_holder_id;
+-------------------+---------------------+-----------+-------------+
| account_holder_id | account_holder_name | branch_id | loan_amount |
+-------------------+---------------------+-----------+-------------+
|                 1 | Alice Smith         |         1 |    10000.00 |
|                 2 | Bob Johnson         |         2 |    20000.00 |
|                 4 | Diana Prince        |         1 |     5000.00 |
+-------------------+---------------------+-----------+-------------+
3 rows in set (0.00 sec)