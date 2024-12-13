
# Write a Python program to create a dictionary from a string.
# Note: Track the count of the letters from the string. Sample string: 'w3resource'
# Expected output:
# {'3': 1,'s': 1, 'r': 2, 'u': 1, 'w': 1, 'c': 1, 'e': 2, 'o': 1}


sample_string = 'w3resource'
char_count_dict = {}
for char in sample_string:
    if char.isalnum(): 
        char_count_dict[char] = char_count_dict.get(char, 0) + 1

print(char_count_dict)



   