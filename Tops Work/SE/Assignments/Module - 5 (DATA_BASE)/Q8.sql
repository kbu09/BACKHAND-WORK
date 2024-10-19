-- What is SQL Key Constraints writing an Example of SQL Key Constraints 
-- Ans 

Rules applied to database columns called SQL Key Constraints guarantee the integrity and uniqueness of the data in a table. The correctness and consistency of the data are maintained by key constraints, which make sure that specific requirements are met for the data.

Typical Types of Constraints on SQL Keys:

Every record in a table is uniquely identified by its primary key. No two rows can have the same primary key value, and it cannot be null.
Creates a connection between two tables using a foreign key. Referential integrity is maintained via a foreign key that points to a primary key in a different table.
A unique key makes sure that every value in a column—or set of columns—is distinct. A unique key has the ability to take null values, unlike the primary key.
A check constraint verifies that every value in a column satisfies a predetermined requirement.
Not Null: Assures that there isn't a null value in a column.

Primary Key (PK)
CREATE TABLE customers (
    customer_id INT PRIMARY KEY, 
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);


Foreign Key (FK):
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)  


Not Null:
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,  
    contact_number VARCHAR(20)
);


Check Constraint:
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2) CHECK (salary >= 30000),  
    hire_date DATE CHECK (hire_date <= CURRENT_DATE) 
);

