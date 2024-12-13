
#  Why Do You Use the Zip () Method in Python?


# To create pairs of items, such as key-value pairs for dictionaries or tuples, two or more iterables (such as lists, tuples, etc.) can be combined using Python's zip() function. This is a summary of how it is used:


# Key Reasons to Use zip():

# 1. Combining Key-Value Pairs:
# zip() is commonly used to create dictionaries from two lists—one list for keys and another for values.
# keys = ['name', 'age', 'city']
# values = ['kb', 25, 'nikol']
# zipped = zip(keys, values)
# my_dict = dict(zipped) 



# 2. Parallel Iteration: It allows parallel iteration over two (or more) sequences, ensuring that elements from one list are paired with corresponding elements from another.
# list1 = [1, 2, 3]
# list2 = ['a', 'b', 'c']
# zipped = zip(list1, list2)  

# 3. Tuple Packing:

# zip() returns an iterator of tuples where each tuple contains one item from each of the input iterables.
# Useful when you want to map elements together in a structured format.

# items = ['apple', 'banana']
# prices = [1.5, 0.5]
# zipped = zip(items, prices) 


# 4. Efficiency and Readability:

# Using zip() simplifies code and makes it more readable by avoiding manual iteration and pairing of elements.

# names = ['kb', 'kar', 'bap']
# ages = [25, 30, 22]
# person_dict = dict(zip(names, ages))
# print(person_dict)  