
# Write a Python program to create a file and write a string into it.


msg = "File created successfully!"
f = open("demo2.txt",'w')
f.write(msg)
f.close()