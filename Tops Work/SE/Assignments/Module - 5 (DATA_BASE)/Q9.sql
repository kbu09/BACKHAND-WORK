-- What is save Point? How to create a save Point write a Query? 
-- ANS...

A database transaction's SAVEPOINT is a point where you can reverse a portion of the transaction without effecting the full transaction. It gives you the ability to mark a particular point in a transaction so you may go back to it later if necessary, giving you more precise control over the transaction process.

How to Utilise a Savepoint:
Initiate a Transaction: It is necessary to create a savepoint inside of a running transaction.
What a Savepoint Is: To establish a savepoint at a particular stage of the transaction, use the SAVEPOINT keyword.
Rollback to a Savepoint: The ROLLBACK TO command can be used to roll back a transaction to a particular savepoint if necessary.
Finalise the Transaction: Use COMMIT to complete the transaction after all operations have been completed.


-- Start a transaction
BEGIN;

-- Insert the first employee
INSERT INTO employees (employee_id, name, department, salary)
VALUES (1, 'John', 'IT', 6000);

-- Create a savepoint after the first insertion
SAVEPOINT savepoint1;

-- Insert the second employee
INSERT INTO employees (employee_id, name, department, salary)
VALUES (2, 'Alice', 'HR', 5000);

-- Create another savepoint after the second insertion
SAVEPOINT savepoint2;

-- Attempt to insert a third employee with an invalid salary
INSERT INTO employees (employee_id, name, department, salary)
VALUES (3, 'Mark', 'Sales', -3000);  -- Negative salary, which is incorrect

-- If an error occurs, roll back to savepoint2
ROLLBACK TO savepoint2;

-- The third insertion is rolled back, but the first two remain

-- Now, commit the transaction to save the valid changes
COMMIT;


