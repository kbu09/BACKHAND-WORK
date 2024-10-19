-- What is DML Compiler in SQL? 
-- ANS>>

A database management system (DBMS) component that processes and runs Data Manipulation Language (DML) instructions is called a DML compiler (Data Manipulation Language Compiler). Database management and manipulation are accomplished by DML statements.

Important DML Input Commands:
SELECT: Gets information from a single or several tables.
INSERT: Expands a table by adding additional rows of data.
UPDATE: Adjusts data that already exists in a table.
DELETE: Takes data rows out of a table.

Role of the DML Compiler:

Parsing: The DML compiler takes a DML statement and checks it for semantic validity (that is, whether the actions make sense within the framework of the database schema) and syntax mistakes.

Translation: It converts the DML commands into a representation at a lower level, usually an execution plan for a query or an intermediate piece of code. How the DBMS will access and handle the data is described in this plan.

Execution: The DML compiler collaborates with the DBMS's execution engine to perform the data manipulation operations, such as fetching, inserting, updating, or removing data, after creating the execution plan.

Optimisation: To ensure that operations are carried out as efficiently as possible, the DML compiler may additionally use query optimisation techniques to enhance the effectiveness of data retrieval and manipulation.
