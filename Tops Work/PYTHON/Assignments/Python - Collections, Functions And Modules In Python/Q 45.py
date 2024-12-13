# Write a Python program to find the highest 3 values in a dictionary


my_dict = {
    'a': 10,
    'b': 45,
    'c': 30,
    'd': 25,
    'e': 50,
    'f': 20
}

top_3_values = sorted(my_dict.values(), reverse=True)[:3]
print("Top 3 highest values:", top_3_values)
