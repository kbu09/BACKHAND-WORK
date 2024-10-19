-- What is Normalization? 
-- ANS...

The process of organising data in a database to reduce redundancy and enhance data integrity is known as normalisation. It entails setting up a relational database so that there are less redundancies and logical relationships between data points, which facilitates anomaly-free data maintenance, updating, and querying.Normalisation is the process of dividing a big, complicated table into smaller, related tables and defining the relationships between them in order to guarantee that the database follows particular guidelines, or normal forms. Certain kinds of anomalies or redundancies are eliminated in every normal form.

The step for Standardisation:


1NF, or First Normal Form:
Make that there are atomic (indivisible) values in every column.
There should only be one sort of data in each column—no lists or multiple values in a single column, for example.
Make that each row is distinct, usually by identifying each row with a primary key.

Form 2, Second Normal (2NF):
must fulfil 1NF's criteria.
Eliminate partial dependencies by making non-key properties completely, not merely partially, dependent on the primary key. This guarantees that, particularly in composite keys (keys composed of multiple attributes), every non-key attribute is dependent on the full primary key.


Form Three Normal (3NF):
must fulfil the 2NF criteria.
Eliminate transitive dependencies, which means that non-key characteristics should only be dependent on the main key and not on other non-key characteristics. Basically, no attribute ought to be derived indirectly from the main key.


BCNF, or Boyce-Codd Normal Form:
a more stringent 3NF.
Each determinant, or attribute that depends entirely on another attribute for its functionality, needs to be considered a potential key.


4NF, or Fourth Normal Form:
must fulfil the BCNF standards.
Remove multivalued dependencies: an attribute in a table should be moved into a different table if it can have more than one independent value for a single primary key.


Normal Form Five (NF-5):
must fulfil 4NF's standards.
Remove join dependencies so that, unless it's required to express the relationship, no data may be reconstructed from smaller tables by just joining them.


Benefits of Normalization:


Cuts down on redundancies simplifies updates and conserves storage by assisting in the prevention of duplicate data.
Prevents abnormalities: shields against insertion, update, and deletion irregularities and guarantees data consistency.
Enhances effectiveness: more efficiently arranges data to optimise database updates and queries.

