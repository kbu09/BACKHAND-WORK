#  Write a Python program to check multiple keys exists in a dictionary


my_dict = {
    "name": "kb",
    "age": 25,
    "city": "ahemdabad",
    "email": "kb@example.com"
}

keys_to_check = ["name", "age", "country", "email"]

all_keys_exist = all(key in my_dict for key in keys_to_check)

if all_keys_exist:
    print("All keys exist in the dictionary.")
else:
    print("Not all keys exist in the dictionary.")
