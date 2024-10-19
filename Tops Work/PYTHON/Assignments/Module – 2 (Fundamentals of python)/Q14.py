# Write a Python program to count occurrences of a substring in a string. 


def counts(string, substring):
    return string.count(substring)  

main_string = input("Enter the main string: ")
sub_string = input("Enter the substring to count: ")

count = counts(main_string, sub_string)
print(f"The substring '{sub_string}' occurs {count} times in the string.")
