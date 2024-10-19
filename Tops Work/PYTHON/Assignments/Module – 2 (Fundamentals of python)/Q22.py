# Write a Python function to insert a string in the middle of a string. 

def str(original, to_insert):
    middle_index = len(original) // 2 
    return original[:middle_index] + " " + to_insert + " " + original[middle_index:]


original_string = input("Enter the original string: ")
string_to_insert = input("Enter the string to insert: ")
result = str(original_string, string_to_insert)
print("Final string:", result)
