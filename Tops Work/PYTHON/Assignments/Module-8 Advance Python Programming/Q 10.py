# Write a Python program to read a file and print the data on the console
# Ans=

name = "demo2.txt"

with open(name,'r') as file:
    data = file.read()
print(data)