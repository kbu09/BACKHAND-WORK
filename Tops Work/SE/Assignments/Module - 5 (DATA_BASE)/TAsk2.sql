-- . Create table given below: Employee and Incentive


mysql> create table employee (
    -> Employee_id int primary key auto_increment,
    -> First_name varchar(50) not null,
    -> Last_name varchar(50) not null,
    -> Salary varchar(50) not null,
    -> Joining_date varchar(50) not null,
    -> Department varchar(50) not null);
Query OK, 0 rows affected (0.03 sec)


mysql> describe employee;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| Employee_id  | int         | NO   | PRI | NULL    | auto_increment |
| First_name   | varchar(50) | NO   |     | NULL    |                |
| Last_name    | varchar(50) | NO   |     | NULL    |                |
| Salary       | varchar(50) | NO   |     | NULL    |                |
| Joining_date | varchar(50) | NO   |     | NULL    |                |
| Department   | varchar(50) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
6 rows in set (0.00 sec)

INSERT INTO Employee (First_name, Last_name, Salary, Joining_date, Department) VALUES
('John', 'Abraham', 1000000, '2013-01-01 00:00:00', 'Banking'),
('Michael', 'Clarke', 800000, '2013-01-01 00:00:00', 'Insurance'),
('Roy', 'Thomas', 700000, '2013-02-01 00:00:00', 'Banking'),
('Tom', 'Jose', 600000, '2013-02-01 00:00:00', 'Insurance'),
('Jerry', 'Pinto', 650000, '2013-01-01 00:00:00', 'Insurance'),
('Philip', 'Mathew', 750000, '2013-01-01 00:00:00', 'Services'),
('TestName1', '123', 650000, '2013-01-01 00:00:00', 'Services'),
('TestName2', 'Lname%', 600000, '2013-02-01 00:00:00', 'Insurance');



mysql> select * from employee;
+-------------+------------+-----------+---------+---------------------+------------+
| Employee_id | First_name | Last_name | Salary  | Joining_date        | Department |
+-------------+------------+-----------+---------+---------------------+------------+
|           1 | John       | Abraham   | 1000000 | 2013-01-01 00:00:00 | Banking    |
|           2 | Michael    | Clarke    | 800000  | 2013-01-01 00:00:00 | Insurance  |
|           3 | Roy        | Thomas    | 700000  | 2013-02-01 00:00:00 | Banking    |
|           4 | Tom        | Jose      | 600000  | 2013-02-01 00:00:00 | Insurance  |
|           5 | Jerry      | Pinto     | 650000  | 2013-01-01 00:00:00 | Insurance  |
|           6 | Philip     | Mathew    | 750000  | 2013-01-01 00:00:00 | Services   |
|           7 | TestName1  | 123       | 650000  | 2013-01-01 00:00:00 | Services   |
|           8 | TestName2  | Lname%    | 600000  | 2013-02-01 00:00:00 | Insurance  |
+-------------+------------+-----------+---------+---------------------+------------+
8 rows in set (0.00 sec)


mysql> create table Incentive (
    -> Employee_refId int,
    -> Incentive_date varchar(50) not null,
    -> Incentive_amount varchar(50),
    -> FOREIGN KEY (Employee_refId) REFERENCES employee(Employee_id));
Query OK, 0 rows affected (0.06 sec)

mysql> describe incentive;
+------------------+-------------+------+-----+---------+-------+
| Field            | Type        | Null | Key | Default | Extra |
+------------------+-------------+------+-----+---------+-------+
| Employee_refId   | int         | YES  | MUL | NULL    |       |
| Incentive_date   | varchar(50) | NO   |     | NULL    |       |
| Incentive_amount | varchar(50) | YES  |     | NULL    |       |
+------------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> INSERT INTO Incentive (Employee_refId, Incentive_date, Incentive_amount) VALUES
    -> (1, '2013-02-01', 5000),
    -> (2, '2013-02-01', 3000),
    -> (3, '2013-02-01', 4000),
    -> (1, '2013-01-01', 4500),
    -> (2, '2013-01-01', 3500);
Query OK, 5 rows affected (0.02 sec)



mysql> select First_name as Employee_name from employee where First_name = "Tom";
+---------------+
| Employee_name |
+---------------+
| Tom           |
+---------------+
1 row in set (0.00 sec)

mysql> select First_name,Joining_date,Salary from employee;
+------------+---------------------+---------+
| First_name | Joining_date        | Salary  |
+------------+---------------------+---------+
| John       | 2013-01-01 00:00:00 | 1000000 |
| Michael    | 2013-01-01 00:00:00 | 800000  |
| Roy        | 2013-02-01 00:00:00 | 700000  |
| Tom        | 2013-02-01 00:00:00 | 600000  |
| Jerry      | 2013-01-01 00:00:00 | 650000  |
| Philip     | 2013-01-01 00:00:00 | 750000  |
| TestName1  | 2013-01-01 00:00:00 | 650000  |
| TestName2  | 2013-02-01 00:00:00 | 600000  |
+------------+---------------------+---------+

mysql> select * from employee order by First_name Asc;
+-------------+------------+-----------+---------+---------------------+------------+
| Employee_id | First_name | Last_name | Salary  | Joining_date        | Department |
+-------------+------------+-----------+---------+---------------------+------------+
|           5 | Jerry      | Pinto     | 650000  | 2013-01-01 00:00:00 | Insurance  |
|           1 | John       | Abraham   | 1000000 | 2013-01-01 00:00:00 | Banking    |
|           2 | Michael    | Clarke    | 800000  | 2013-01-01 00:00:00 | Insurance  |
|           6 | Philip     | Mathew    | 750000  | 2013-01-01 00:00:00 | Services   |
|           3 | Roy        | Thomas    | 700000  | 2013-02-01 00:00:00 | Banking    |
|           7 | TestName1  | 123       | 650000  | 2013-01-01 00:00:00 | Services   |
|           8 | TestName2  | Lname%    | 600000  | 2013-02-01 00:00:00 | Insurance  |
|           4 | Tom        | Jose      | 600000  | 2013-02-01 00:00:00 | Insurance  |
+-------------+------------+-----------+---------+---------------------+------------+
8 rows in set (0.00 sec)

mysql> select * from employee order by Salary desc;
+-------------+------------+-----------+---------+---------------------+------------+
| Employee_id | First_name | Last_name | Salary  | Joining_date        | Department |
+-------------+------------+-----------+---------+---------------------+------------+
|           2 | Michael    | Clarke    | 800000  | 2013-01-01 00:00:00 | Insurance  |
|           6 | Philip     | Mathew    | 750000  | 2013-01-01 00:00:00 | Services   |
|           3 | Roy        | Thomas    | 700000  | 2013-02-01 00:00:00 | Banking    |
|           5 | Jerry      | Pinto     | 650000  | 2013-01-01 00:00:00 | Insurance  |
|           7 | TestName1  | 123       | 650000  | 2013-01-01 00:00:00 | Services   |
|           4 | Tom        | Jose      | 600000  | 2013-02-01 00:00:00 | Insurance  |
|           8 | TestName2  | Lname%    | 600000  | 2013-02-01 00:00:00 | Insurance  |
|           1 | John       | Abraham   | 1000000 | 2013-01-01 00:00:00 | Banking    |
+-------------+------------+-----------+---------+---------------------+------------+
8 rows in set (0.00 sec)

mysql> select * from employee where first_name LIKE 'j%';
+-------------+------------+-----------+---------+---------------------+------------+
| Employee_id | First_name | Last_name | Salary  | Joining_date        | Department |
+-------------+------------+-----------+---------+---------------------+------------+
|           1 | John       | Abraham   | 1000000 | 2013-01-01 00:00:00 | Banking    |
|           5 | Jerry      | Pinto     | 650000  | 2013-01-01 00:00:00 | Insurance  |
+-------------+------------+-----------+---------+---------------------+------------+
2 rows in set (0.00 sec)


mysql> SELECT Department, MAX(Salary) AS maximum_salary
    -> FROM Employee
    -> GROUP BY Department
    -> ORDER BY maximum_salary;
+------------+----------------+
| Department | maximum_salary |
+------------+----------------+
| Banking    | 700000         |
| Services   | 750000         |
| Insurance  | 800000         |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> SELECT employee.first_name, SUM(incentive.incentive_amount) AS total_incentive
    -> FROM employee
    -> INNER JOIN incentive
    -> ON employee.employee_id = incentive.employee_refId
    -> GROUP BY employee.first_name;
+------------+-----------------+
| first_name | total_incentive |
+------------+-----------------+
| John       |            9500 |
| Michael    |            6500 |
| Roy        |            4000 |
+------------+-----------------+
3 rows in set (0.00 sec)


mysql> DELIMITER //
mysql> CREATE TRIGGER add_new_employee
    -> AFTER INSERT ON employee
    -> FOR EACH ROW
    -> BEGIN
    ->     INSERT INTO view (employee_id, first_name, last_name, salary, joining_date, department)
    ->     VALUES (NEW.employee_id, NEW.first_name, NEW.last_name, NEW.salary, DATE_FORMAT(NEW.joining_date, '%Y-%m-%d'), NEW.department);
    -> END
    -> //
Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER ;
mysql> INSERT INTO employee (First_name, Last_name, Salary, Joining_date, Department)
    -> VALUES ('KB', 'Upahyay', '800000', '2013-01-01 00:00:00', 'Insurance');
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM view;
+-------------+------------+-----------+--------+--------------+------------+---------+---------------------+
| employee_id | first_name | last_name | salary | joining_date | department | view_id | view_date           |
+-------------+------------+-----------+--------+--------------+------------+---------+---------------------+
|          9 | KB         | Upahyay   | 800000 | 2013-01-01   | Insurance  |       1 | 2024-10-01 17:11:10 |
+-------------+------------+-----------+--------+--------------+------------+---------+---------------------+
1 row in set (0.00 sec)



