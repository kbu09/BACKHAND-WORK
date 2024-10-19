# Write a Python program to get a string made of the first 2 and the last
# 2 chars from a given a string. If the string length is less than 2, return
# instead of the empty string. 

def get_char(s):
    if len(s) <= 2:
        return "Enter more than two words " 
    return s[:2] + s[-2:] 

input_string = input("Enter a string: ")
result = get_char(input_string)
print("Final string:", result)
