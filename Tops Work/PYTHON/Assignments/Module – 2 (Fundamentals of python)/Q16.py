# Write a Python program to get a single string from two given strings,
# separated by a space and swap the first two characters of each string. 


def strs(str1, str2):
    str1_swapped = str2[:2] + str1[2:]  
    str2_swapped = str1[:2] + str2[2:]  
    return str1_swapped + " " + str2_swapped  

string1 = input("Enter the first string: ")
string2 = input("Enter the second string: ")

result = strs(string1, string2)
print("Final string:", result)
