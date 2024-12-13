#  Write a Python program to create and display all combinations of letters, selecting each letter from a different key in a dictionary.
# Sample data: {'1': ['a','b'], '2': ['c','d']} Expected Output:
# ac ad bc bd

from itertools import product

dict_of_lists = {'1': ['a', 'b'], '2': ['c', 'd']}

combinations = product(dict_of_lists['1'], dict_of_lists['2'])

for combo in combinations:
    print(''.join(combo), end=' ')



