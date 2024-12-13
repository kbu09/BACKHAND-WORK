# Write a Python program to replace last value of tuples in a list.


list_of_tuples = [(1, 2, 3), (4, 5, 6), (7, 8, 9)]
new_value = 99
modified_tuples = [t[:-1] + (new_value,) for t in list_of_tuples]
print("Original List of Tuples:", list_of_tuples)
print("Modified List of Tuples:", modified_tuples)

