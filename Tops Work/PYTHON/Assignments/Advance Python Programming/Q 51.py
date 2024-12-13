# Write a Python function that checks whether a passed string is palindrome or not


def pali(s):
   
    return s == s[::-1]

# Example usage
string = input("Enter a string to check if it's a palindrome: ")

if pali(string):
    print(f"'{string}' is a palindrome.")
else:
    print(f"'{string}' is not a palindrome.")

