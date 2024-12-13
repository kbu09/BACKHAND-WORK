# Write a Python program to create a file and print the string into the file.


name = "demo3.txt"
str = "hy this is proggram"
with open(name,'w') as file:
    file.write(str)
print(f"String has been written to {name}")