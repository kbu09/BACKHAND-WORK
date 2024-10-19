-- What is Difference between DBMS and RDBMS? 
-- Ans..


The manner that DBMSs (Database Management Systems) and RDBMSs (Relational Database Management Systems) arrange and handle data differs. Both systems manage databases, but they are not the same in terms of structure, functionality, and purpose.


1. Database management system
DBMS: A DBMS is a general-purpose system used to manage databases, which are collections of files or tables containing data. It might not allow complicated associations between data and doesn't always adhere to a structured relational model. Database management systems (DBMS) encompass object-oriented, network, and hierarchical databases.


DBMS Features:

Data Storage: Although relationships between data are sometimes implicit or poorly defined, data can be kept in files, tables, or other structures.

Relationships: Tables and relationships are not the only ways that data can be arranged. Relationships are managed at the application level instead of the database level if they exist.

Normalisation: DBMS systems may permit duplicate data storage and often do not provide normalisation.
Data Integrity: Less stringent enforcement is applied to integrity constraints, such as uniqueness and referential integrity.

Concurrency: Multi-user scenarios and concurrent access are typically not well supported by DBMS systems.
File systems, XML databases, and more traditional systems such as the network and hierarchical DBMS models are some examples.




2. Relational Database Management System (RDBMS)
An RDBMS is a particular kind of database management system that adheres to E.F. Codd's relational paradigm. Data in an RDBMS is kept in tables, or relations, that have rows and columns. Keys, either primary or foreign, are used to clearly identify the relationships between the data.

Key Features of RDBMS:

Data Storage: Tables, also known as relations, are used to store data. A set of related data is represented by each table, and tables can be connected by relationships (e.g., via primary and foreign keys).

Relationships: An RDBMS lets users construct relationships between tables by allowing them to use keys. For example, a primary key in one table may be referenced by a foreign key in another.

Normalisation: RDBMS systems typically enforce rules up to the third normal form (3NF) in order to minimise redundancy and prevent anomalies.

Data Integrity: Referential integrity, unique keys, and other integrity restrictions are enforced by RDBMS systems to guarantee data consistency.

Concurrency: Facilitates the handling of transactions in multi-user contexts by offering mechanisms for atomicity, consistency, isolation, and durability (ACID characteristics).

SQL Support: Structured Query Language (SQL) is used by the majority of RDBMSs for data management, querying, and manipulation.

Examples include Oracle, MySQL, PostgreSQL, Microsoft SQL Server, and SQLite.



