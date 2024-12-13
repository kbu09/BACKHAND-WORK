#  Write a Python program to write multiple strings into a file.


strings = ["this is file demo3"]

f = open("demo2.txt","w")
for string in strings:
    f.write(string)
f.close()

print("All strings added successfully!")