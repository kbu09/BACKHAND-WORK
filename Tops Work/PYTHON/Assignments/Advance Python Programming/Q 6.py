# Write a Python program to count the number of strings where the string length is 2 or more and the first and last character are same from a given list of strings. 


inp = input("Enter list: ")
str = inp.split()
ct = 0
for words in str:
    if len(words) >= 2 and words[0] == words[-1]:
        ct += 1
print(ct)