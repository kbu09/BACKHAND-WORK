--  Create table  

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| new_schema         |
| performance_schema |
| sys                |
| tabledata          |
+--------------------+

mysql> use tabledata;
Database changed
mysql> create table users(
    -> firstname varchar(50) not null,
    -> lastname varchar(50) not null,
    -> address varchar(150) not null,
    -> city varchar(150) not null,
    -> age varchar(150) not null);

    
mysql> use tabledata;
Database changed
mysql> select * from users;
+-----------+----------+-----------+-----------+-----+
| firstname | lastname | address   | city      | age |
+-----------+----------+-----------+-----------+-----+
| mickey    | mouse    | 123 nikol | ahmedabad | 73  |
+-----------+----------+-----------+-----------+-----+

mysql> insert into users (firstname, lastname, address, city, age) values("Bat", "Man", "321  Cavern Ave", "ahmedabad", "54"), ("Wonder", "Woman", "987 Truth Welly", "Paradies", "39"), ("Donald", "Duck", "555 Quack Street", "Mallard", "65"), ("Bugs", "Bunny", "564 Carrot Street", "Rascal", "58"), ("Weily", "Coyote", "999 Acme ", "Hairball", "32"), ("Tweety", "Bird", "564", "Nikol", "28");
Query OK, 6 rows affected (0.01 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from users;
+-----------+----------+-------------------+-----------+-----+
| firstname | lastname | address           | city      | age |
+-----------+----------+-------------------+-----------+-----+
| mickey    | mouse    | 123 nikol         | ahmedabad | 73  |
| Bat       | Man      | 321  Cavern Ave   | ahmedabad | 54  |
| Wonder    | Woman    | 987 Truth Welly   | Paradies  | 39  |
| Donald    | Duck     | 555 Quack Street  | Mallard   | 65  |
| Bugs      | Bunny    | 564 Carrot Street | Rascal    | 58  |
| Weily     | Coyote   | 999 Acme          | Hairball  | 32  |
| Tweety    | Bird     | 564               | Nikol     | 28  |
+-----------+----------+-------------------+-----------+-----+
7 rows in set (0.00 sec)