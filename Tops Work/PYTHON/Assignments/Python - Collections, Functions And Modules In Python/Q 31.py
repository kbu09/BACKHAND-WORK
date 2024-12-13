#  How will you create a dictionary using tuples in python?


# 1. Using a List of Tuples (Explicit Key-Value Pairs):

list_of_tuples = [('a', 1), ('b', 2), ('c', 3)]
my_dict = dict(list_of_tuples)

print(my_dict)


# 2. Dictionary Comprehension with Tuples:
list_of_tuples = [('a', 1), ('b', 2), ('c', 3)]
my_dict = {key: value for key, value in list_of_tuples}
print(my_dict)


# 3. Using zip() with Tuples:
keys = ['a', 'b', 'c']
values = [1, 2, 3]
my_dict = dict(zip(keys, values))

print(my_dict)
