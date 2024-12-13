#  Write a Python script to print a dictionary where the keys are numbers between 1 and 15.

num = {2: "kb", 11: "bapu", 61: "kartik", 10: "aniket", 5: "rahul", 17: "pratap"}
print(f"Original dictionary: \n{num}")

# Create a new dictionary with keys between 1 and 15
new_dict = {key: num[key] for key in num if 1 <= key <= 15}

# Print the new dictionary
print("Dictionary with keys between 1 and 15: ")
print(new_dict)


