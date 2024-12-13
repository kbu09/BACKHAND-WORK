# Write a Python script to check if a given key already exists in a dictionary.


my_dict = {'apple': 5, 'banana': 3, 'cherry': 7}

key_to_check = input("Enter the key to check: ")

if key_to_check in my_dict:
    print(f"The key '{key_to_check}' already exists in the dictionary.")
else:
    print(f"The key '{key_to_check}' does not exist in the dictionary.")

