#  Write a Python program to convert a list of characters into a string. 


use_inp = input("Enter characters: ")
char_list = use_inp.split()
print(char_list)
name = "".join(char_list)
print(name) 