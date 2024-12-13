
# Write a Python program to print all unique values in a dictionary.

my_dict = {
    "name": "kb",
    "age": 25,
    "city": "ahme",
    "email": "kb@example.com",
    "nickname": "kishan"
}

unique_values = set(my_dict.values())

print("Unique values in the dictionary:")
print(unique_values)
