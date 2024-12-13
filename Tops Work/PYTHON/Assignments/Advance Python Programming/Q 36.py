# How Do You Check The Presence Of A Key In A Dictionary?


my_details = {
    "fname": "kb",
    "mname": "upadhyay",
    "age": 25,
    "city": "ahmedabad",
    "num": "8460731200",
    "gender": "Male",
}

key = input("Enter key for search: ")

if key in my_details:
    print(f"Key '{key}' is present in the dictionary.")
    print(f"Value associated with '{key}': {my_details[key]}")
else:
    print(f"Key '{key}' is not present in the dictionary.")



