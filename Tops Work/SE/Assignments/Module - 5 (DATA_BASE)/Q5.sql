-- What do you understand By Data Redundancy? 
-- ANS...


Data redundancy refers to the excessive repetition or duplication of data within a database or data storage system. It happens when a single piece of data is kept in several locations or formats. This can lead to issues such as:

Wasted storage space: Repeatedly storing the same information uses up more space than is necessary.
Data inconsistency: Information may be erroneous or inconsistent if data is updated in one location but not in another.
Increased maintenance: It can be difficult and error-prone to update and manage several versions of the same data.

Example: 
Imagine a customer database where the customer's address is kept in both the orders table and the customer table. Both tables need to be updated if the client moves, which could result in inconsistent data if one table is updated while the other isn't.

Solutions:
Normalization is commonly used to eliminate or reduce data redundancy by grouping the data into separate, relevant tables and reducing duplication.
