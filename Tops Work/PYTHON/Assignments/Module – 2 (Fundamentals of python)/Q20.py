# Write a Python function to reverses a string if its length is a multiple of 4. 

def str(s):
    if len(s) % 4 == 0:  
        return s[::-1] 
    return s  
input_string = input("Enter a string: ")
result = str(input_string)
print("String:", result)
